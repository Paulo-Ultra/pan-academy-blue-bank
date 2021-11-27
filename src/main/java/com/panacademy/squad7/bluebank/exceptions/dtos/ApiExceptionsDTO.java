package com.panacademy.squad7.bluebank.exceptions.dtos;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import lombok.Data;

@Data
public class ApiExceptionsDTO {

  private String message;

  @JsonInclude(Include.NON_NULL)
  private List<String> errors;

  public ApiExceptionsDTO(Exception e) {
    this.message = e.getMessage();
  }

  public ApiExceptionsDTO(String message, List<String> errors) {
    this.message = message;
    this.errors = errors;
  }
}