package com.study.reply;

import java.util.List;
import java.util.Map;

public interface ReplyMapper {
  int total(int contentsno);
  List<ReplyDTO> list(Map map);
  int create(ReplyDTO dto);
  ReplyDTO read(int rnum);
  int update(ReplyDTO dto);
  int delete(int rnum);
}
