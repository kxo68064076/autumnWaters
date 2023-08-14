package com.woniu.phoneCity.entity;

import lombok.*;

import java.io.Serializable;

@Data
@Getter
@Setter
@EqualsAndHashCode
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;
	private String thumbnail;
	private String username;
	private String password;
	private int root;
	private int isDelete;
	private String gender;
	private String tel;
	private String email;
	private String gmtCreat;
	private String gmtModified;
}
