CREATE TABLE Filmes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(60),
    minutos INT
);

/*DELIMITER $
CREATE TRIGGER chk_minutos BEFORE INSERT INTO ON Filmes
	FOR EACH ROW
    BEGIN
		IF NEW.minutos < 0 THEN
			SET NEW.minutos = NULL;
		END IF;
	END$
DELIMITER ;*/

DELIMITER $
CREATE TRIGGER chk_minutos BEFORE INSERT ON Filmes
	FOR EACH ROW
    BEGIN
		IF NEW.minutos < 0 THEN
			-- Lançar um Erro
			SIGNAL SQLSTATE '45000' -- exceção não tratada
			SET MESSAGE_TEXT = "Valor inválido para minutos",
			MYSQL_ERRNO = 2022; -- código de erro pra controle
		END IF;
	END$
DELIMITER ;

CREATE TABLE log_deletions (
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(60),
    quando DATETIME,
    quem VARCHAR(40)
);

DELIMITER $
CREATE TRIGGER log_deletions AFTER DELETE ON Filmes
	FOR EACH ROW
    BEGIN
		INSERT INTO log_deletions VALUES (NULL, OLD.titulo, SYSDATE(), USER());
	END$
DELIMITER ;