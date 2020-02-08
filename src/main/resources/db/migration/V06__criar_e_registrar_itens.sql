CREATE TABLE p0d32vg8zd2lkpmq.Item (
                                       id INT(11) NOT NULL AUTO_INCREMENT,
                                       quantidade INT NULL,
                                       valor FLOAT  NULL,
                                       id_orcamento int  NOT NULL,
                                       id_servicoproduto int NOT NULL,
                                       PRIMARY KEY (id),
                                       CONSTRAINT fk_item_orcamento
                                           FOREIGN KEY (id_orcamento)
                                               REFERENCES p0d32vg8zd2lkpmq.Orcamento (id)
                                               ON DELETE NO ACTION
                                               ON UPDATE NO ACTION,
                                       CONSTRAINT fk_item_servico
                                           FOREIGN KEY (id_servicoproduto)
                                               REFERENCES p0d32vg8zd2lkpmq.Produto_Servico (id)
                                               ON DELETE NO ACTION
                                               ON UPDATE NO ACTION)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1
    DEFAULT CHARACTER SET = utf8;

CREATE INDEX fk_item_orcamento ON p0d32vg8zd2lkpmq.Item (id_orcamento ASC);
CREATE INDEX fk_item_servico ON p0d32vg8zd2lkpmq.Item (id_servicoproduto ASC);

INSERT INTO p0d32vg8zd2lkpmq.Item (valor, quantidade, id_orcamento, id_servicoproduto)
VALUES ('100', '1', '1', '1');
INSERT INTO p0d32vg8zd2lkpmq.Item (valor, quantidade, id_orcamento, id_servicoproduto)
VALUES ('200', '1', '2', '2');
INSERT INTO p0d32vg8zd2lkpmq.Item (valor, quantidade, id_orcamento, id_servicoproduto)
VALUES ('100', '1', '3', '3');
