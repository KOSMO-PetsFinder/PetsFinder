<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 입양후기 + 유기동물 상세보기 -->
<!DOCTYPE html>
<!-- saved from url=(0046)https://petplanet.co/petsitters/details/rsbzj1 -->
<html>
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body cz-shortcut-listen="true">
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
			height="0" width="0" style="display: none; visibility: hidden;"></iframe>
	</noscript>
	<div id="__next">
		<div>
			<div>
				<div id="detail-page-container">
					<div class="desktop hidden-s">
						<div>
							<div class="wrapper">
								<div>
									<div
										style="z-index: 1; width: 83px; height: 36px; display: flex; align-items: center; justify-content: center; border: 1px solid rgb(223, 227, 234); border-radius: 3px; position: absolute; top: 605px; right: 24px; background-color: white; cursor: pointer; user-select: none;">
										<p
											style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71);">사진
											보기</p>
									</div>
									<div
										style="z-index: 1; width: 100px; height: 36px; display: flex; align-items: center; justify-content: center; border: 1px solid rgb(223, 227, 234); border-radius: 3px; position: absolute; top: 109px; right: 24px; background-color: white; cursor: pointer; user-select: none;">
										<img width="22" height="22"
											src="./sitterView/icon_share.png"
											style="margin-right: 2px;">
										<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71);">공유하기</p>
									</div>
									<div class="mainGallery"
										style="z-index: 0; display: flex; flex-direction: row; width: 100%; height: 580px; margin-top: 85px; position: relative;">
										<div style="width: 62.5%; height: 580px; overflow: hidden;">
											<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" width="900" height="580"
												class="normalImage"
												src="../sitterView/e0b00068f0f84976a9442d8a89e18646.jpg"
												style="object-fit: cover; width: 100%; user-select: none; cursor: pointer;">
										</div>
										<div
											style="display: flex; flex-grow: 1; width: 37.5%; height: 580px; flex-direction: column;">
											<div style="width: 100%; height: 290px; overflow: hidden;">
												<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" height="290"
													class="normalImage"
													src="./sitterView/14592bff60324a22995567266f07115a.jpg"
													style="object-fit: cover; user-select: none; cursor: pointer; width: 100%;">
											</div>
											<div style="width: 100%; height: 290px; overflow: hidden;">
												<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" height="290"
													class="normalImage"
													src="./sitterView/654dd40110f54db8935e54eef538a441.jpg"
													style="object-fit: cover; user-select: none; cursor: pointer; width: 100%;">
											</div>
										</div>
									</div>
									<div
										style="margin-top: 73px; margin-left: auto; margin-right: auto; width: 1027px; display: flex; flex-direction: row; justify-content: space-between;">
										<div>
											<div style="display: flex; flex-direction: row;">
												<div
													style="overflow: hidden; width: 90px; height: 90px; border: none; border-radius: 12px; margin-top: 5px;">
													<img width="90" height="90" alt="경북 영주시 휴천동 펫시터"
														src="./sitterView/08d8f81d5fd74638bcd1e4d6792e95d0.jpg"
														style="object-fit: cover; display: inline-block;">
												</div>
												<div style="margin-left: 32px;">
													<h1
														style="font-size: 15px; color: rgb(76, 80, 86); line-height: 22px; letter-spacing: -0.2px;">${abandonedAnimalDTO.abani_species }</h1>
													<p style="margin-top: 5px; font-size: 25px; color: rgb(56, 60, 72); line-height: 37px; letter-spacing: -0.2px;">${abandonedAnimalDTO.abani_kind }</p>
													<!-- 시터 신청시 체크박스로 선택한 것들 반복문으로 띄우기 -->
													<div style="display: flex; flex-flow: row wrap; margin-top: 12px; width: 458px;">
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#${abandonedAnimalDTO.abani_age }</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#${abandonedAnimalDTO.abani_gender }</p>
													</div>
												</div>
											</div>
											<div
												style="display: flex; flex-direction: column; align-items: center; justify-content: center; height: 85px; margin-top: 50px; border-radius: 5px; background-color: rgb(250, 250, 251);">
												<div
													style="display: flex; flex-direction: row; align-items: center;">
													<img width="26" height="27"
														src="./sitterView/verification.png">
													<p
														style="font-weight: 600; font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(57, 60, 71); margin-left: 5px;">예방 접종${abandonedAnimalDTO.abani_vaccin } / 중성화 완료${abandonedAnimalDTO.abani_neut }</p>
												</div>
												<p
													style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(85, 85, 85); margin-top: 5px;">5단계 신원 검증 및 돌봄 환경의 안전성 검증이 완료된 펫츠 파인더입니다</p>
											</div>
											<div style="margin-top: 53px;">
												<h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71);">아이를 소개합니다.</h2>
												<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 32px;">
													${abandonedAnimalDTO.abani_char }
												</p>
											</div>
												
											<!-- 후기 -->
											<div style="margin-top: 80px;">
												<div style="display: flex; flex-direction: row; align-items: center; margin-bottom: 38px;">
													<h2 style="font-weight: 600; font-size: 22px; letter-spacing: -0.2px; line-height: 33px; color: rgb(57, 60, 71); margin-right: 20px; margin-bottom: 0px;">입양 후기</h2>
												</div>
												<div style="display: flex; flex-direction: row;">
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/46bbf847d6434a20a033a18a0061879b.jpg"
															style="object-fit: cover;">
													</div>
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/8a2b86f4fc534f73a15a434baebd53fa.jpg"
															style="object-fit: cover;">
													</div>
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/01b9927be704472a8e4f75dbdfcf55ce.jpg"
															style="object-fit: cover;">
													</div>
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/6a7dffb15ac44f28a39289bf5357ad23.jpg"
															style="object-fit: cover;">
														<div
															style="display: flex; position: absolute; inset: 0px; width: 139px; height: 139px; align-items: center; justify-content: center; background-color: rgba(0, 0, 0, 0.59); border-radius: 3px;">
															<p
																style="font-size: 17px; letter-spacing: 0.5px; line-height: 25px; color: white;">+8</p>
														</div>
													</div>
												</div>
												<!-- 후기 내용 전체 불러오기 -->
												<script>
													function com_view () {
														var com = document.getElementById('com')
														if( com.style.display == 'none' ) {
															com.style.display = 'flex'
														} else {
															com.style.display = 'none'
														}
													}
												</script>
												<div style="margin-top: 38px;">
													<div
														style="display: flex; flex-direction: column; border-top: 1px solid rgb(235, 235, 235); padding: 38px 0px;">
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<img width="50" height="50"
																src="./sitterView/0f9b46e53cf74ae3916d25246eacec9c.jpg"
																style="object-fit: cover; border-radius: 50%;">
															<div style="margin-left: 18px;">
																<p
																	style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">이*훈</p>
																<p
																	style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">2022년
																	7월 21일</p>
															</div>
														</div>
														<p
															style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">펫시팅은
															처음이고 하로를 다른곳에 맡기는것도 처음이라서 걱정되는 부분이 많았는데~송*은 펫시터의 정성스러운
															일지와 하로의 행복해 보이는 표정들이 저의 걱정을 싹 날려주었습니다~정말 감사합니다~진짜 진심으로
															하로를 잘케어 해주신거 같아서 다시한번 감사드립니다~^^</p>
														<div
															style="display: flex; flex-direction: row; margin-top: 33px;">
															<img width="90" height="90"
																src="./sitterView/46bbf847d6434a20a033a18a0061879b.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="./sitterView/8a2b86f4fc534f73a15a434baebd53fa.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="./sitterView/01b9927be704472a8e4f75dbdfcf55ce.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
														</div>
														<div
															style="display: flex; flex-direction: row; justify-content: right; margin-top: 32px;">
															
															<div
																style="background-color: rgb(250, 250, 252); width: 100%; padding: 20px 24px;">
																<div
																	style="display: flex; flex-direction: row; align-items: center;">
																	<p
																		style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">펫시터님
																		답글</p>
																	<p
																		style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">10일
																		전</p>
																</div>
																<p
																	style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">첫
																	돌봄 맡기시는 보호자님 .또 아이의 마음을 충분히 공감합니다_^^저두 저희 애들맡길때
																	그맘일것같았어요 ~첫날 너무 낮설어해서 걱정했는데 같이 낮잠잔 이후 넘 잘놀구 에너지넘쳐서 저두
																	뿌듯했습니다_^^ 유독 브라우니를 쫒아다니는 모습이 기억에남아 피식 웃게되네요~^^ 보호자님이
																	믿고맡겨주셔서 저두 감사합니다 _^^</p>
															</div>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: column; border-top: 1px solid rgb(235, 235, 235); padding: 38px 0px;">
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<img width="50" height="50"
																src="./sitterView/9c2f23c55ab14365b7018bd63e891471.jpg"
																style="object-fit: cover; border-radius: 50%;">
															<div style="margin-left: 18px;">
																<p
																	style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">김*은</p>
																<p
																	style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">2022년
																	7월 3일</p>
															</div>
														</div>
														<p
															style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">매번
															꼼꼼하게 일지도 써주시고 동영상 편집도 너무 귀엽게 해주셔서 보는 내내 웃음이 떠나질 않았어요 - ♡♡

															결혼 준비 중이라 대구에 갈 일이 많은데, 이 시기에 후추를 이렇게 예뻐해주시는 사장님을 알게 된 건
															저희에겐 정말! 천운이라 생각해요!! 호텔이야 여러군데 있지만 며칠씩 맡기면서 마음 놓고 안심할 수
															있는 곳은 없었거든요 ㅠㅠ 사회화 시기 때 후추가 강아지들을 많이 접해보지 않아서 어딜 가나 꼬리말고
															구석에 숨어있기 바빴는데, 상주하는 예쁜 아이들(♡)이 헬퍼독 역할을 해줘서 지금은 먼저 다가가고
															놀자고 해요! 얼마나 뿌듯한지 몰라요 ㅠㅠㅠ 이번에도 다녀와서 하루는 거의 녹초 상태였답니다 ^^ 매번
															항상 감사드려요 ❤️❤️</p>
														<div
															style="display: flex; flex-direction: row; margin-top: 33px;">
															<img width="90" height="90"
																src="./sitterView/6a7dffb15ac44f28a39289bf5357ad23.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="./sitterView/cca49b9ba6354b839ae5a19e76608c55.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="./sitterView/3114e4e677ac4c3abb779c107f789061.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
														</div>
														<div
															style="display: flex; flex-direction: row; justify-content: right; margin-top: 32px;">
															<img width="50" height="50"
																src="./sitterView/08d8f81d5fd74638bcd1e4d6792e95d0.jpg"
																style="object-fit: cover; border-radius: 50%;">
															<div
																style="background-color: rgb(250, 250, 252); width: 515px; padding: 20px 24px;">
																<div
																	style="display: flex; flex-direction: row; align-items: center;">
																	<p
																		style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">펫시터님
																		답글</p>
																	<p
																		style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">10일
																		전</p>
																</div>
																<p
																	style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">후추는
																	이제 친구집 놀러오듯이 편히지내는 모습이죠~ㅎㅎ 머무는 동안만은 저희 가족이나 다름없이 항상 잘
																	돌보겠습니다._^^ 그러니 후추 걱정은 마시구 즐겁게 결혼준비하시도록 앞으로도 잘케어하겠습니다~♡</p>
															</div>
														</div>
													</div>
													<!-- 후기 폼!!!!!!!! -->
													<div
														style="display: flex; flex-direction: column; border-top: 1px solid rgb(235, 235, 235); padding: 38px 0px;">
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<img width="50" height="50"
																src="./sitterView/086d1c39b3704073bd35db5d5298e464.jpg"
																style="object-fit: cover; border-radius: 50%;">
															<div style="margin-left: 18px;">
																<p
																	style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">장*영</p>
																<p
																	style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">2022년
																	6월 19일</p>
															</div>
														</div>
														<p
															style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">펫플래닛
															어플과 송*은 펫시터님은 만난건 저와 저희 블루에게 아주아주 큰 행운이었어요💕 이런 어플이 있는줄도
															몰랐는데 지금알아서 너무 아쉬울정도로 대만족했어요. 일단 타 호텔은 산책x, 사진x,
															일지x,세심한케어x 등 그냥 풀어놓고 하루 재워주는 곳이라면 펫플래닛은 펫시터분이 하나부터 열까지 우리
															아이를 위해 정말 많이 신경써주고있다는걸 느끼게 해주네요. 2~3시간마다 올려주시는 일지만 봐도 얼마나
															즐겁고 행복해보이는지😍 잘 짜여진 프로그램과 강아지 성향을 고려해서 산책, 놀이 해주시니까 정말
															좋아요. 전문적인 지식을 가진분이라는게 느껴지는 조언까지도 다 만족입니다. 강아지와 함께할 수 없는
															시간이 또 온다면 무조건 송*은님께 예약해서 강아지와 저 둘다 좋은시간 보낼거에요🐶😊 추가적으로
															인생사진까지 이쁘게 찍어주셔서 저랑 남자친구 프로필 사진을 바로 바꿨어요 ㅋㅋ꺗ㅎㅎ</p>
														<div
															style="display: flex; flex-direction: row; margin-top: 33px;">
															<img width="90" height="90"
																src="./sitterView/58640337b6634e12a5719e1c2868c41d.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="./sitterView/28c79f31242f441b9f5a8cc6c36c4c01.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="./sitterView/15fad763db7d49489c1930ceff4f9195.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
														</div>
														
														<button onclick="com_view();" style='background: none; border: none;'>댓글보기</button>
														<div id="com" name="com" style="display: none; flex-direction: row; justify-content: right; margin-top: 32px;">
															<img width="50" height="50"
															src="./sitterView/086d1c39b3704073bd35db5d5298e464.jpg"
															style="object-fit: cover; border-radius: 50%;">
															<div style="background-color: rgb(250, 250, 252); width: 515px; padding: 20px 24px;">
																<div 
																	style="display: flex; flex-direction: row; align-items: center;">
																	<p
																		style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">펫시터님
																		답글</p>
																	<p
																		style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">1개월
																		전</p>
																</div>
																<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">꺅~감사합니다ㅎㅎ
																	저야말루 즐거운 시간 이었습니다^^@ 첫 만남이라 어떤 친구일까 궁금했었는데 알고보니
																	애.교.덩.어.리 였어요~^^ 2박3일 시간 가는줄 몰랐어요 ㅎㅎ 블루야~ 담에 꼭 다시 만나길
																	바래~♡ 보호자님께두 감사합니다^^ 첫만남시 자세한 정보공유대화하며 시간내어주고 가셔서 블루가
																	낯선공간에 빨리 적응할수 있었어요~^^♡</p>
															</div>
														</div>
													</div>
													<div
														style="display: flex; align-items: center; justify-content: center; height: 50px; border-radius: 25px; border: 1px solid rgb(129, 137, 155); margin-bottom: 100px; user-select: none; cursor: pointer; margin-top: 12px;">
														<p
															style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72);">펫시터
															후기 더보기</p>
													</div>
												</div>
											</div>
										</div>
										<!-- 왼쪽 끝 -->
									</div>
								</div>
							</div>
						</div>
						<div class="custom-channel-io-button"
							style="position: fixed; right: 0px; bottom: 90px; z-index: 99999;">
							<img
								src="./sitterView/mobile_channelio_icon.png"
								style="width: 95px; height: 95px;">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>