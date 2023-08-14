package com.woniu.phoneCity.entity;

import lombok.*;


@Data
@Getter
@Setter
@EqualsAndHashCode
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    private int id;
    private String orderNum;
    private User user;
    private Address  address;
    private String totalPrice;
    private int status;
    private String gmtCreate;
    private String gmtModify;

}
