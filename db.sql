-- 创建数据库
CREATE DATABASE IF NOT EXISTS `imooc-springboot-learn` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `imooc-springboot-learn`;

-- 创建DbStu表
CREATE TABLE IF NOT EXISTS `db_stu` (
  `id` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `sex` INTEGER NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 插入一些测试数据
INSERT INTO `db_stu` (`id`, `name`, `sex`) VALUES ('1', '张三', 1);
INSERT INTO `db_stu` (`id`, `name`, `sex`) VALUES ('2', '李四', 0);
INSERT INTO `db_stu` (`id`, `name`, `sex`) VALUES ('3', '王五', 1);