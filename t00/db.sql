CREATE DATABASE ucode_web;

CREATE USER 'alyannoy'@'localhost' IDENTIFIED BY 'securepass';

GRANT ALL PRIVILEGES ON ucode_web . * TO 'alyannoy'@'localhost';