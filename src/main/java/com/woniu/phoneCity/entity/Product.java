package com.woniu.phoneCity.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;


@Data
@Getter
@Setter
@EqualsAndHashCode
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    private Integer id;
    private String thumbnail;
    private String productName;
    private ProductCategory category;
    private String price;
    private String author;
    private String publish;
    private String productIntroduce;
    private Integer productStoreCount;
    private Integer productSaleCount;
    private Integer productCollectionCount;
    private Integer productStatus;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String gmtCreate;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String gmtModified;
    private Boolean isDelete;

}
