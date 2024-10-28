<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicInfo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    int id = Integer.parseInt(request.getParameter("id"));
    String search = request.getParameter("search");
    
    %>
    
    <div id = "wrap">
		<header class="d-flex align-items-center my-4">
			<h2 class = "text-success mr-1"><a class = "text-success" href="http://localhost:8080/jsp/test/test10/melong.jsp">Melong</a></h2>
	             <%for(Map<String, Object> music :musicList) { %>
				<form class = "col-5" method="post" action="/jsp/test/test10/melong-detail.jsp?id=<%=music.get("id") %>">
				<%} %>
		             <div class="d-flex input-group">
		                 <input type="text" name = "search" class="form-control ml-5">
		                 <div class="input-group-append"> 
		                     <button type="submit" class="btn btn-info">검색</button>                    
		                 </div>
		             </div>
	             </form>                 
		</header>
		<nav>
		<div class = "mt-3">
	            <ul class="nav nav-fill">
	               <li class="ml-3 font-weight-bold"><a class = "nav link text-dark" href="#">멜롱차트</a></li>
	                <li class="ml-4 font-weight-bold"><a class = "nav link text-dark" href="#">최신음악</a></li>
	                <li class="ml-4 font-weight-bold"><a class = "nav link text-dark" href="#">장르음악</a></li>
	                <li class="ml-4 font-weight-bold"><a class = "nav link text-dark" href="#">멜롱DJ</a></li>
	                <li class="ml-4 font-weight-bold"><a class = "nav link text-dark" href="#">뮤직어워드</a></li>
	            </ul>
        	</div>
		</nav>
		<section>
			<div class = "profile border border-success mb-3 d-flex">
			<%for(Map<String, Object> music :musicList) {
				if(search == null && id == (Integer)music.get("id") || search != null && search.equals((String)music.get("title"))) {
			%>				
				<div class = "d-flex align-items-center p-3">
					<img alt = "앨범표지" width = "170" src = <%= music.get("thumbnail") %>>		
				</div>
				<div class = "mt-3 ml-4">
					<h2><%= music.get("title") %></h2>
					<div class = "text-success font-weight-bold mb-3"><%= music.get("singer") %></div>
					<div class = "small text-secondary d-flex"><span style="width: 60px">앨범</span><span class = "ml-3"><%=music.get("album") %></span></div>	
					<div class = "small text-secondary d-flex"><span style="width: 60px">재생시간</span><span class = "ml-3 text-dark"><%= (Integer)music.get("time")/60 %> : <%= (Integer)music.get("time") % 60 %></span></div>
					<div class = "small text-secondary d-flex"><span style="width: 60px">작곡가</span><span class = "ml-3"><%=music.get("composer") %></span></div>	
					<div class = "small text-secondary d-flex"><span style="width: 60px">작사가</span><span class = "ml-3"><%=music.get("lyricist") %></span></div>	
				</div>
					<%} %>	
				<%} %>			
			</div>
			<div class = "chartList mt-5">
				<h3>가사</h3>
				<hr>
				<div class = "mb-5">가사 정보 없음</div>				
			</div>
		</section>
		<footer>
			<hr>
			<div class = "text-secondary small">Copyright 2025. melong All rights reserved.</div>
		</footer>	
	</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>