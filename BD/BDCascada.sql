-- -----------------------------------------------------
-- Table `carrito_compras`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `dni` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrito_compras`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `precio` INT NULL,
  PRIMARY KEY (`idproducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrito_compras`.`detalle_venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`detalle_venta` (
  `iddetalle_venta` INT NOT NULL AUTO_INCREMENT,
  `idventa` INT NOT NULL,
  `idproducto` INT NOT NULL,
  PRIMARY KEY (`iddetalle_venta`),
  INDEX `fk_detalle_venta_venta1_idx` (`idventa` ASC) ,
  INDEX `fk_detalle_venta_producto2_idx` (`idproducto` ASC) ,
  CONSTRAINT `fk_detalle_venta_venta1`
    FOREIGN KEY (`idventa`)
    REFERENCES `carrito_compras`.`venta` (`idventa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_venta_producto2`
    FOREIGN KEY (`idproducto`)
    REFERENCES `carrito_compras`.`producto` (`idproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrito_compras`.`venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`venta` (
  `idventa` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL,
  `idcliente` INT NOT NULL,
  PRIMARY KEY (`idventa`),
  INDEX `fk_venta_cliente1_idx` (`idcliente` ASC) ,
  CONSTRAINT `fk_venta_cliente1`
    FOREIGN KEY (`idcliente`)
    REFERENCES `carrito_compras`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrito_compras`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `dni` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrito_compras`.`venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`venta` (
  `idventa` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL,
  `idcliente` INT NOT NULL,
  PRIMARY KEY (`idventa`),
  INDEX `fk_venta_cliente1_idx` (`idcliente` ASC) ,
  CONSTRAINT `fk_venta_cliente1`
    FOREIGN KEY (`idcliente`)
    REFERENCES `carrito_compras`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrito_compras`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `precio` INT NULL,
  PRIMARY KEY (`idproducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrito_compras`.`detalle_venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrito_compras`.`detalle_venta` (
  `iddetalle_venta` INT NOT NULL AUTO_INCREMENT,
  `idventa` INT NOT NULL,
  `idproducto` INT NOT NULL,
  PRIMARY KEY (`iddetalle_venta`),
  INDEX `fk_detalle_venta_venta1_idx` (`idventa` ASC) ,
  INDEX `fk_detalle_venta_producto2_idx` (`idproducto` ASC) ,
  CONSTRAINT `fk_detalle_venta_venta1`
    FOREIGN KEY (`idventa`)
    REFERENCES `carrito_compras`.`venta` (`idventa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_venta_producto2`
    FOREIGN KEY (`idproducto`)
    REFERENCES `carrito_compras`.`producto` (`idproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

