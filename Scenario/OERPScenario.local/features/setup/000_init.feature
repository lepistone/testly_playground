@testly @setup @base

Feature: Parameter the new database

  @createdb @no_login
  Scenario: CREATE DATABASE
    Given I find or create database from config file

  @modules
  Scenario: install modules
    Given I update the module list
    And I do not want all demo data to be loaded on install
    Given I install the required modules with dependencies:
      | name     |
      | purchase |
