<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>
<link rel="stylesheet" href="css/slick.css">
<section id="bodyContainer">
    <div class="mainVisual">
      <div class="wid">
        <iframe src="https://www.youtube.com/embed/IQXc6YyV7Fc?controls=0;loop=1;" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
	<div class="chartDiv">
		<div class="wid">
			<h2>무비차트</h2>
			<div class="chartSlide">
				<%
				int i = 1;
				%>
				<c:forEach var="movie" items="${movieList}">
					<div class="chartMovie">
						<a href="#" data-text="<%=i%>"><img src="upload/${movie.poster}" alt=""></a>
						<div class="movieInfo">
							<p class="tit">${movie.title}</p>
							<p class="txt">
								<!-- <span>예매율 16.7%</span> -->
								<span>${movie.genre}</span>
							</p>
						</div>
					</div>
					<%
					i++;
					%>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="eventDiv">
      <div class="wid">
        <h2>이벤트</h2>
        <div class="eventList">
          <div class="item">
            <a href="#">
              <div class="pic"><img src="images/main/16649460074130.jpg" alt=""></div>
              <div class="txt">
                <p class="tit">CGV x TVING 월 정기 혜택 [CGV PLUS]</p>
                <p class="date">2022.10.06~2032.10.06</p>
              </div>
            </a>
          </div>
          <div class="item">
            <a href="#">
              <div class="pic"><img src="images/main/16651313310660.jpg" alt=""></div>
              <div class="txt">
                <p class="tit">[4DX 문유] 관람 리뷰 이벤트</p>
                <p class="date">2022.10.07~2022.10.28</p>
              </div>
            </a>
          </div>
          <div class="item">
            <a href="#">
              <div class="pic"><img src="images/main/16655395256800.jpg" alt=""></div>
              <div class="txt">
                <p class="tit">[블랙 아담]필름마크</p>
                <p class="date">2022.10.12~2022.11.06</p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="cineRoomDiv">
      <h2>특별관</h2>
      <div class="wid clear">
        <div class="picDiv">
          <div class="pic pic01 on"><a href="#"><img src="images/main/cineroom1.png" alt=""></a></div>
          <div class="pic pic02"><a href="#"><img src="images/main/cineroom1.png" alt=""></a></div>
          <div class="pic pic03"><a href="#"><img src="images/main/cineroom1.png" alt=""></a></div>
          <div class="pic pic04"><a href="#"><img src="images/main/cineroom1.png" alt=""></a></div>
        </div>
        <div class="roomName">
          <div class="txtDiv on">
            <a href="#">
              <span class="tit">SUITE CINEMA</span>
              <span class="info">#호텔 컨셉의 프리미엄관</span>
            </a>
          </div>
          <div class="txtDiv">
            <a href="#">
              <span class="tit">CINE &amp; LIVINGROOM</span>
              <span class="info">#신개념 소셜 상영관</span>
            </a>
          </div>
          <div class="txtDiv">
            <a href="#">
              <span class="tit">4DX</span>
              <span class="info">#모션시트 #오감체험</span>
            </a>
          </div>
          <div class="txtDiv">
            <a href="#">
              <span class="tit">CINE de CHEF</span>
              <span class="info">#쉐프가 있는 영화관</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="shopDiv">
      <div class="wid clear">
        <div class="shopCom">
          <div class="h4Div">
            <h4>영화관람권</h4>
            <p><a href="">더보기</a></p>
          </div>
          <ul>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/moiveCard01.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">CGV 영화관람권</p>
                  <p class="price">12,000원</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/moiveCard02.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">CGV 골드클래스</p>
                  <p class="price">40,000원</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/moiveCard03.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">4DX관람권</p>
                  <p class="price">19,000원</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="shopCom">
          <div class="h4Div">
            <h4>기프트카드</h4>
            <p><a href="">더보기</a></p>
          </div>
          <ul>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/giftCard01.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">PACONNIE A형</p>
                  <p class="price">금액충전형</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/giftCard02.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">PACONNIE B형</p>
                  <p class="price">금액충전형</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/giftCard03.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">PACONNIE C형</p>
                  <p class="price">금액충전형</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="shopCom">
          <div class="h4Div">
            <h4>콤보</h4>
            <p><a href="">더보기</a></p>
          </div>
          <ul>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/combo01.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">CGV콤보</p>
                  <p class="price">9,000원</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/combo02.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">더블콤보</p>
                  <p class="price">12,000원</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="pic"><img src="images/main/combo03.jpg" alt=""></div>
                <div class="txt">
                  <p class="tit">스몰세트</p>
                  <p class="price">6,500원</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="cardEvent">
      <div class="wid str">
        <img src="images/main/0119_980x240.png" alt="">
      </div>
    </div>
  </section>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  <script src="js/slick.min.js"></script>
  <script src="js/main.js"></script>
<%@ include file="/include/footer.jsp" %>