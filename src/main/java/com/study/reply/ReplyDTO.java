package com.study.reply;


import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import com.study.contents.ContentsDTO;

import lombok.Data;

@Data
public class ReplyDTO {
  private int rnum;       //댓글 번호
  private String content; //댓글 내용
  private Date regdate;   //댓글 작성 일자
  private String id;      //댓글 작성 id
  private int contentsno; //게시글 번호
  
}
