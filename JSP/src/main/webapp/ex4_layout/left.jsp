<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #04AA6D;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>

<ul>
  <li><a href="templatetest.jsp?page=newitem">�Ż�ǰ</a></li>
  <li><a href="templatetest.jsp?page=bestitem">�α��ǰ</a></li>
  <li><a href="templatetest.jsp?page=useditem">�߰��ǰ</a></li>
</ul>