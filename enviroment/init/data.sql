create table titles (
    id int primary key auto_increment comment '식별자',
    title varchar(300) not null comment '제목'
) engine=InnoDB
;

create table contents (
    id int primary key auto_increment comment '식별자',
    line_index int not null comment '줄 번호',
    contents text not null comment '내용',
    talker_identifier varchar(10) not null comment '화자 구별자',
    title_id int not null comment '제목 식별자'
) engine=InnoDB
;

create table talkers (
    id int primary key auto_increment comment '식별자',
    talker_identifier varchar(10) not null comment '화자 구별자',
    talker varchar(100) comment '화자',
    title_id int not null comment '제목 식별자'
) engine=InnoDB
;

insert into titles (id, title) values (null, '여우와 포도밭')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '배고픈 여우 한 마리가 포도밭 옆을 지나가게 되었어요.', 'n', 1)
,(null, 2, '여우는 포도가 매우 먹고 싶었지요. ', 'n', 1)
,(null, 3, '그래서 포도밭 울타리 여기저기를 살피며 들어갈 만한 구멍을 찾아보았어요. ', 'n', 1)
,(null, 4, '그런데 들어갈 만한 구멍이 없었어요. ', 'n', 1)
,(null, 5, '한군데 구멍이 있었지만, 그 구멍은 너무 좁아서 들어갈 수 없었지요. ', 'n', 1)
,(null, 6, '좋은 방법이 없을까?', 'f1', 1)
,(null, 7, '여우는 살을 빼어 홀쭉하게 한 다음에 들어가기로 하였어요. ', 'n', 1)
,(null, 8, '그래서 여우는 사흘 동안 아무것도 먹지 않았지요.', 'n', 1)
,(null, 9, '살이 빠져 홀쭉해진 여우는 마침내 포도밭에 들어갈 수 있었어요. ', 'n', 1)
,(null, 10, '포도밭에 들어간 여우는 배가 고파서 정신없이 포도를 따 먹었지요. ', 'n', 1)
,(null, 11, '아, 배부르다. 실컷 먹었으니 이제 슬슬 밖으로 나가 볼까? ', 'f1', 1)
,(null, 12, '여우는 들어왔던 구멍으로 머리를 내밀었어요.', 'n', 1)
,(null, 13, '그런데 배가 너무 불러서 도저히 빠져 나갈 수가 없었지요. ', 'n', 1)
,(null, 14, '인제 됐군.', 'f1', 1)
,(null, 15, '사흘을 굶은 여우는 다시 홀쭉해져서 울타리를 빠져 나올 수 있었던 거예요. ', 'n', 1)
,(null, 16, '여우는 탄식하며 말하였지요. ', 'n', 1)
,(null, 17, '“아, 배부르다. 실컷 먹었으니 이제 슬슬 밖으로 나가 볼까? ', 'f1', 1)
;
insert into titles (id, title) values (null, '아낌없이 주는 나무')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '나무 한 그루가 있었어요.', 'n', 2)
,(null, 2, '그리고 그 나무한테 놀러 오는 귀여운 소년이 있었지요.', 'n', 2)
,(null, 3, '소년은 매일 나뭇가지에 매달려 놀기도 하고, 열매를 따 먹기도 하였어요. 또 술래잡기도 하고, 나무 그늘에서 낮잠도 잤지요.', 'n', 2)
,(null, 4, '소년은 나무를 사랑하였고 나무도 소년을 사랑했어요.', 'n', 2)
,(null, 5, '둘은 아주 행복하였지요. ', 'n', 2)
,(null, 6, '어느덧 소년은 청년이 되었고 나무도 크게 자랐어요. ', 'n', 2)
,(null, 7, '소년은 다른친구를 많이 만나게 되어 나무에게는 가끔 놀러오게 되었지요.', 'n', 2)
,(null, 8, '세월이 흘러 소년은 어른이 되었어요.', 'n', 2)
,(null, 9, '그는 나무를 찾아와 밑동만 남겨 놓고 나무를 베어 팔았어요. 그래도 나무는 그가 오는 것이 좋았고 행복하였지요.', 'n', 2)
,(null, 10, '노인이 된 소년은 다시 나무를 찾아왔지요. ', 'n', 2)
,(null, 11, '나무가 말하였어요. ', 'n', 2)
,(null, 12, '나는 너에게 줄 거라고는 이제 아무것도 없어. 나는 밑동만 남았거든. ', 'm2', 2)
,(null, 13, '나는 아무것도 필요하지 않아. 그저 앉아서 편히 쉴 곳이나 있었으면 좋겠어. ', 'm1', 2)
,(null, 14, '노인이 말하였어요.', 'n', 2)
,(null, 15, '앉아서 쉬기에는 늙은 나무 밑동이 최고야. 자, 이리 와서 앉아.', 'm2', 2)
,(null, 16, '노인은 나무가 시키는 대로 하였지요. 나무는 무척 행복하였답니다. ', 'n', 2)
;
insert into titles (id, title) values (null, '얼음 속의 잉어')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '아주 추운 겨울날 한 소년이 슬프게 울고있었어요.', 'n', 3)
,(null, 2, '아버지가 편찮으신데 어떤 약을 써도 소용이 없으니 어쩌면 좋지? ', 'm1', 3)
,(null, 3, '길을 가던 한 노인이 이말을 듣게 되었지요.', 'n', 3)
,(null, 4, '잉어를 고아 드리면 나으실 게다.', 'm2', 3)
,(null, 5, '이렇게 추운 겨울에 잉어가 어디 있어요?', 'm1', 3)
,(null, 6, '그건 너의 정성에 달렸으니 강가로 가서 구해 보아라. ', 'm2', 3)
,(null, 7, '소년은 꽁꽁 얼어붙은 강가로 가서 얼음에 구멍을 뚫어놓고 간절히 기도를 했지요. ', 'n', 3)
,(null, 8, '제발 잉어를 잡을 수 있도록 도와주세요.', 'm1', 3)
,(null, 9, '하루도 빠짐없이 강가에 나가 낚시 줄을 내려뜨렸지요.', 'n', 3)
,(null, 10, '그러던 어느 날 커다란 잉어 한 마리가툭하고 얼음 구멍 밖으로 올라오는 게 아니겠어요. ', 'n', 3)
,(null, 11, '넌 매일 무얼 중얼거리고 있니?', 'f1', 3)
,(null, 12, '잉어를 잡아 우리 아버지 병을 낫게 해달라고 기도를 했어. ', 'm1', 3)
,(null, 13, '너는 마음이 참 착하구나. 나를 가져가 약으로 쓰도록해. ', 'f1', 3)
,(null, 14, '잉어야, 고맙다! 정말 고마워.', 'm1', 3)
,(null, 15, '소년은 커다란 잉어를 안고 집으로 돌아왔어요. ', 'n', 3)
,(null, 16, '이 소식을 전해 들은 노인이 소년의 집을 찾아왔어요.', 'n', 3)
,(null, 17, '너의 정성에 하늘도 감동하셨구나! 내 너의 효심에 감동하여 이 약을 줄테니 잉어와 함께 고아드리도록 해라. ', 'm2', 3)
,(null, 18, '고맙습니다. ', 'm1', 3)
,(null, 19, '그 뒤 소년의 아버지는 병이 나아 소년과 함께 행복하게 살았대요. ', 'n', 3)
;
insert into titles (id, title) values (null, '임금님의 밥상')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날 어느 나라에 임금님이 살고 계셨어요. ', 'n', 4)
,(null, 2, '임금님은 몸이 뚱뚱해져서 걱정이 되셨지요. ', 'n', 4)
,(null, 3, '허허, 왜 이렇게 몸이 무겁고 입맛이 없을까? ', 'm1', 4)
,(null, 4, '옆에 있던 왕비님이 말했어요.', 'n', 4)
,(null, 5, '임금님, 아침 일찍 일어나 운동을 해보세요. ', 'f1', 4)
,(null, 6, '허허, 운동?', 'm1', 4)
,(null, 7, '네, 매일 아침 운동을 하시면 몸도 튼튼해지고 살도 빠지실 겁니다.', 'f1', 4)
,(null, 8, '왕비의 말대로 해보겠소.', 'm1', 4)
,(null, 9, '임금님은 매일 아침마다 열심히 운동을 하셨지요. ', 'n', 4)
,(null, 10, '어느 날 운동을 마치고 진지를 잡수시는데 밥이 참으로 맛있었어요. ', 'n', 4)
,(null, 11, '여봐라! 요리사를 어서 들라 이르라.', 'm1', 4)
,(null, 12, '예, 임금님 부르셨습니까?', 'm2', 4)
,(null, 13, '오냐, 네가 이렇게 밥을 맛있게 지었으니 상을 주어야겠다. ', 'm1', 4)
,(null, 14, '임금님은 요리사에게 상을 주려고 하였어요.', 'n', 4)
,(null, 15, '아닙니다. 임금님, 쌀가게 주인이 좋은 쌀을 주어 밥이 맛이 있게 되었으니 쌀가게 주인에게 상을 주어야 합니다. ', 'm2', 4)
,(null, 16, '요리사의 말을 들은 임금님은 쌀가게 주인을 불러와 상을 주려 하였어요. ', 'n', 4)
,(null, 17, '너에게 상을 주어야겠다.', 'm1', 4)
,(null, 18, '아닙니다. 임금님, 좋은 쌀은 시골 농부가 농사를 열심히 지어서 보내 준 것입니다. ', 'm3', 4)
,(null, 19, '이번에는 농부를 불러 왔어요. ', 'n', 4)
,(null, 20, '임금님, 저도 상을 받을 수 없습니다. 하느님이 따뜻한 햇볕과 비를 내려 주셔서 농사를 잘 짓게 되었으니 하느님이 상을 받으셔야 합니다. ', 'm4', 4)
,(null, 21, '그래, 잘 알았도다. 모두 고마운 사람들이구나. ', 'm1', 4)
,(null, 22, '이리하여 임금님은 모두에게 큰 상을 주시고 기뻐하셨답니다. ', 'n', 4)
;
insert into titles (id, title) values (null, '금덩이보다 소중한 것')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '한 젊은이가 오랫동안 열심히 일을 한 뒤 품삯으로 금덩이를 받았어요.', 'n', 5)
,(null, 2, '고향으로 가던 길에 주막에서 하룻밤 묵게 되었지요. ', 'n', 5)
,(null, 3, '이튿날 아침, 주막을 나선 젊은이는 뒤에서 자기를 부르는 소리를 들었어요.', 'n', 5)
,(null, 4, '젊은이가 돌아보니 주막 주인이 뛰어오고 있었지요. ', 'n', 5)
,(null, 5, '당신이 금덩이를 두고 갔기에 이렇게 쫓아왔소.', 'm2', 5)
,(null, 6, '젊은이는 고맙다는 인사를 하고 다시 길을 갔어요.', 'n', 5)
,(null, 7, '조금 가다가 강가에 다다르니, 장마로 인해 물이 많아진 강물에 한 아이가 빠져 허우적거리고 있었지요.', 'n', 5)
,(null, 8, '그런데 아이를 구하려는 사람은 아무도 없었어요. ', 'n', 5)
,(null, 9, '헤엄을 칠 줄 모르는 젊은이는 품속의 금덩이를 꺼내 높이 쳐들고 외쳤지요. ', 'n', 5)
,(null, 10, '저 아이를 구하는 사람에게 이 금덩이를 드리겠소.', 'm1', 5)
,(null, 11, '그러자 한 사람이 옷을 벗어부치고 나서더니 강물에 첨벙 뛰어들었어요. ', 'n', 5)
,(null, 12, '그리고 아이를 구하였어요.', 'n', 5)
,(null, 13, '젊은이는 약속대로 금덩이를 그 사람에게 주었지요.', 'n', 5)
,(null, 14, '이 때, 아이의 아버지가 달려왔어요. 바로 주막 주인이었지요. ', 'n', 5)
,(null, 15, '정말 고맙소. 내 아들을 구하려고 귀한 금덩이를 남에게 주다니...... ', 'm2', 5)
,(null, 16, '주막 주인이 눈물을 글썽거리며 고맙다고 하자, 젊은이가 말하였어요. ', 'n', 5)
,(null, 17, '아무리 금덩이가 귀한들 사람 목숨에 비하겠습니까? ', 'm1', 5)
,(null, 18, '주막에 금덩이를 두고 나왔을 때부터 그것은 제 물건이 아니었습니다. 그것으로 아이를 구했으니 저는 오히려 좋은 일을 한 셈이지요. ', 'm1', 5)
,(null, 19, '그리고 당신도 정직한 마음씨에 대한 보답을 받은 셈이니, 좋지 않습니까? ', 'm1', 5)
;
insert into titles (id, title) values (null, '꿈을 심는 노인')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날에 한 젊은이가 고을 원님으로 가게 되었지요. ', 'n', 6)
,(null, 2, '그는 그동안 보살펴주신 재상을 찾아가 인사를 하였지요. ', 'n', 6)
,(null, 3, '대감마님, 기대에 어긋나지 않는 관리가 되겠습니다. ', 'm1', 6)
,(null, 4, '백성을 사랑하고 희망을 주는 원님이 되시게나. 나는 너무 늙어서 그렇게 할수없네만.... ', 'm2', 6)
,(null, 5, '네. 그런데 지금 무엇을 하고 계십니까? ', 'm1', 6)
,(null, 6, '과일 나무를 심지.', 'm2', 6)
,(null, 7, '언제 따 잡수시려고.... ', 'm1', 6)
,(null, 8, '내가 못 먹으면 자식이나 이웃들이 따 먹겠지. ', 'm2', 6)
,(null, 9, '그로부터 십 년이 흘렀어요.', 'n', 6)
,(null, 10, '고을 원님으로 나갔던 젊은이는 승진하여 같은 고을에 감사로 나가게 되었지요. ', 'n', 6)
,(null, 11, '그래서 신임 감사는 재상께 인사를 드리러 갔어요. 재상은 그를 반겨 맞았지요.', 'n', 6)
,(null, 12, '그리고 배가 가득 담긴 그릇을 내어 놓았어요. ', 'n', 6)
,(null, 13, '배 맛이 참 좋습니다. 이렇게 맛있는 배를 어디에서 구하셨습니까? ', 'm1', 6)
,(null, 14, '자네도기억할게야. 십 년 전 자네가 우리집에 찾아왔을때 내가 심던 그 배나무에서 딴 것일세.', 'm2', 6)
,(null, 15, '십 년 전에 심으신 그 작은 나무에서 딴 배라고요? ', 'm1', 6)
,(null, 16, '일 년을 보고 농사를 짓고, 십 년을 보고 나무를 심고, 백 년을 보고 인재를 기른다고 하지 않던가? ', 'm2', 6)
,(null, 17, '신임 감사는 재상의 말을 듣고 크게 깨달았답니다. ', 'n', 6)
;
insert into titles (id, title) values (null, '우산 장수와 부채 장수')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날 두 아들을 둔 어머니가 살았어요. ', 'n', 7)
,(null, 2, '그런데 어머니는 늘 두 아들 때문에 마음이 편할 날이 없었지요.왜냐하면 큰 아들은 우산 장수였고 작은 아들은 부채 장수였기 때문이에요.날씨가 더운 날이면 어머니는 하늘만 쳐다보았어요. ', 'n', 7)
,(null, 3, '아이구! 이렇게 날씨가 덥고 맑으니 우산이 안 팔리겠구나. ', 'f1', 7)
,(null, 4, '또 비가 오는 날이면 어머니는 땅만 내려다보았어요. ', 'n', 7)
,(null, 5, '아이구! 이렇게 비가 오니 부채가 안 팔리겠구나.', 'f1', 7)
,(null, 6, '그러던 어느 날 이웃집 아주머니가 놀러 와서 말했어요. ', 'n', 7)
,(null, 7, '그렇게 늘 걱정만 하지 말고 반대로 생각하시면 어때요? ', 'f2', 7)
,(null, 8, '반대로 생각하다니요?', 'f1', 7)
,(null, 9, '어머니의 눈이 휘둥그레졌어요. ', 'n', 7)
,(null, 10, '날씨가 더우면 부채 장사가 잘 되고, 비가 오면 우산 장사가 잘 된다고 좋아하면 되잖아요. ', 'f2', 7)
,(null, 11, '그 말을 듣고 어머니는 크게 기뻐하였어요.', 'n', 7)
,(null, 12, '옳지, 그러면 되겠구나!', 'f1', 7)
,(null, 13, '그 날부터 어머니는 늘 기분이 좋았지요. ', 'n', 7)
,(null, 14, '비가 와도 좋고 더워도 좋네.', 'f1', 7)
,(null, 15, '그런데 며칠 후 이웃집 아저씨가 두 아들을 찾아왔어요. ', 'n', 7)
,(null, 16, '여보게들, 내 생각에는 자네 둘이서 따로따로 장사할 게 아니라 비가 오는날엔 같이 우산 장사를 하고 더운 날에는 같이 부채 장사를 하면 어떻겠는가? 그러면 일손도 덜 바쁘고 장사도 더 잘 될텐데.... ', 'm1', 7)
,(null, 17, '그것 참 좋은 생각이네요.', 'f1', 7)
,(null, 18, '그 뒤 어머니는 아들 걱정에서 벗어나 행복하게 살았답니다. ', 'n', 7)
;
insert into titles (id, title) values (null, '황소와 바꾼 무')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날 어느 마을에 부지런한 농부가 살았어요. ', 'n', 8)
,(null, 2, '어느 해 농부가 밭에 무를 심었는데 아주 잘자랐어요. ', 'n', 8)
,(null, 3, '야~.이렇게큰무는처음인걸! 원님이 많은 은혜를 베풀어 주시니 무를 원님께 갖다 드려야지. ', 'm1', 8)
,(null, 4, '농부는 가장 큰 무를 들고 원님을 찾아갔어요.', 'n', 8)
,(null, 5, '원님! 제가 몇 십년 동안 무 농사를 지었습니다만 이렇게 크고 좋은 무를 거두기는 처음입니다. 농사가 잘 된것은 다 원님 덕택이라 가져왔습니다. ', 'm1', 8)
,(null, 6, '이 말을 들은 원님은 크게 기뻐하며 하인을 불렀어요. ', 'n', 8)
,(null, 7, '여봐라! 요새 들어온 물건 중에서 값진 것이 무엇인고?', 'm2', 8)
,(null, 8, '예, 아랫마을 김 서방이 가져온 황소 한 마리가 있습니다만.... ', 'm3', 8)
,(null, 9, '그렇다면 그 황소를 농부에게 주도록 하여라! ', 'm2', 8)
,(null, 10, '농부는 무를 주고 황소를 선물로 받게 되었어요. ', 'n', 8)
,(null, 11, '며칠이 지나자 이 소문은 이 마을 저 마을로 빠르게 퍼졌어요.', 'n', 8)
,(null, 12, '이웃 마을에 사는 욕심쟁이 농부도 그 소문을 들었지요. ', 'n', 8)
,(null, 13, '옳거니, 무 하나를 가져 갔다가 황소를 얻었겠다. 만일 내가 황소를 가져 간다면 아마 금덩어리를 주실 게야. 히히히~ ', 'm4', 8)
,(null, 14, '욕심쟁이 농부는 황소를 몰고 원님을 찾아갔어요. ', 'n', 8)
,(null, 15, '원님! 저는 십 년 동안 소를 길러왔습니다만, 이렇게 살찐 소는 처음입니다. 소를 잘 기르게 된 것은 다 원님의 덕택이라 가져왔습니다. ', 'm4', 8)
,(null, 16, '원님은 크게 기뻐하며 하인을 불렀어요. ', 'n', 8)
,(null, 17, '여봐라! 요새 들어온 물건 가운데 귀한 것이 무엇이냐? ', 'm2', 8)
,(null, 18, '예, 며칠 전 농부가 가져온 무가 있습니다만.... ', 'm3', 8)
,(null, 19, '그렇다면 그 무를 이 농부에게 주도록 하라. ', 'm2', 8)
,(null, 20, '욕심쟁이 농부는 큰 무를 선물로 받게 되었어요. ', 'n', 8)
,(null, 21, '아이고, 망했다. 망했어! ', 'm4', 8)
,(null, 22, '욕심쟁이 농부는 끙끙거리며 무를 가지고 집으로 돌아왔답니다. ', 'n', 8)
;
insert into titles (id, title) values (null, '마음대로 의자')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '당나귀 한 마리가 도토리를 바구니에 가득 담아 집으로 돌아가고 있었어요.', 'n', 9)
,(null, 2, '얼마 쯤 가다보니 의자가 하나 놓여 있었지요. ', 'n', 9)
,(null, 3, '마. 음. 대. 로. 의. 자? 정말 고마운 의자로군. 그럼 좀 쉬었다갈까? ', 'm1', 9)
,(null, 4, '마음대로 의자 위에 도토리 바구니를 놓고 당나귀는 잠이 들었어요. ', 'n', 9)
,(null, 5, '얼마 뒤, 곰이 마음대로 의자 옆을 지나가게 되었어요.', 'n', 9)
,(null, 6, '마. 음. 대. 로. 의. 자? 그런데 이건 도토리잖아? 정말 맛있겠는걸. 마음대로 의자니까 그냥 먹어도 되겠지. ', 'm2', 9)
,(null, 7, '곰은 바구니에 담겨있는 도토리를 모두 먹어버렸어요.', 'n', 9)
,(null, 8, '어! 이거 어쩌지? 바구니가 텅 비었네. 꿀이라도 놓고 가야지. ', 'm2', 9)
,(null, 9, '곰은 빈 바구니에 도토리 대신 꿀병을 놓고 집으로 돌아갔어요. ', 'n', 9)
,(null, 10, '얼마 뒤, 따뜻한 빵을 든 여우도 마음대로 의자 옆을 지나가게 되었어요. ', 'n', 9)
,(null, 11, '마. 음. 대. 로. 의. 자? 이거 정말 고마운데, 마음대로 하라니.... ', 'f1', 9)
,(null, 12, '여우는 곰이 도토리 대신 놓고 간 꿀을 냠냠 맛있게 먹었어요. ', 'n', 9)
,(null, 13, '그런데 빈 바구니만 남겨 두자니 미안한데. 빵이라도 놓고 가야지. ', 'f1', 9)
,(null, 14, '여우는 빵을 바구니에 담아 놓고 집으로 돌아갔어요. ', 'n', 9)
,(null, 15, '얼마 뒤,밤을 잔뜩 주워든 다람쥐 세 마리가 마음대로 의자 옆을 지나가게 되었어요. ', 'n', 9)
,(null, 16, '마.음.대.로.의.자?그런데 이건 빵이잖아? 정말 맛있겠는걸. 마음대로 의자니까 그냥 먹어도 되겠지? 그런데 빈 바구니만 남겨 두자니 미안한데. 밤이라도 놓고 가자. ', 'f2', 9)
,(null, 17, '그래, 그래. 좋아. ', 'f2', 9)
,(null, 18, '다람쥐들은 빈 바구니에 밤을 담아 놓고 집으로 돌아갔어요. ', 'n', 9)
,(null, 19, '잠에서 깨어난 당나귀가 눈을 떴어요.', 'n', 9)
,(null, 20, '아함~. 잘 잤다. 아니 도토리가 모두 밤으로 변했네. 도토리가 자라서 밤이 되었나?', 'm1', 9)
,(null, 21, '당나귀는 어리둥절했지요. ', 'n', 9)
,(null, 22, '정말 도토리가 자라서 밤이 된 것일까요?', 'n', 9)
;
insert into titles (id, title) values (null, '개와 돼지')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날 옛적에, 한 할머니가 개와 돼지를 기르셨습니다. ', 'n', 10)
,(null, 2, '할머니는 개와 돼지를 무척 귀여워하셨습니다. 할머니가 개의 머리를 쓰다듬으며 말씀하셨습니다. ', 'n', 10)
,(null, 3, '참 착하구나. 집도 잘 지키고....', 'f1', 10)
,(null, 4, '할머니는 낮잠만 자는 돼지도 좋아하셨습니다. ', 'n', 10)
,(null, 5, '돼지야, 아프지 말고 무럭무럭 자라라.', 'f1', 10)
,(null, 6, '그러나 낮잠을 자고 있던 돼지는 할머니의 말씀을 듣지 못하였습니다.', 'n', 10)
,(null, 7, '돼지는 할머니가 개만 귀여워한다고 생각하였습니다.', 'n', 10)
,(null, 8, '어느 날 돼지는 개에게 물었습니다. ', 'n', 10)
,(null, 9, '할머니께서는 왜 너만 귀여워하시니? ', 'm1', 10)
,(null, 10, '그것도 몰라? 나는 매일 밤 집을 지키는데, 너는 밥만 먹고 잠만 자니까 싫어하시는 거야. ', 'f2', 10)
,(null, 11, '돼지는 씩 웃으며 생각하였습니다. ', 'n', 10)
,(null, 12, '오늘밤부터 나도 잠을 자지않고 집을 지켜야지. 그러면 할머니께서 나를 더 좋아하실 거야. ', 'm1', 10)
,(null, 13, '밤이 되었습니다. ', 'n', 10)
,(null, 14, '꿀꿀, 꿀꿀, 꿀꿀! ', 'm1', 10)
,(null, 15, '돼지는 목청껏 소리를 질렀습니다.', 'n', 10)
,(null, 16, '돼지의 꿀꿀거리는 소리에 할머니는 잠을 이룰 수 없었습니다. ', 'n', 10)
,(null, 17, '밤새도록 잠을 못 자고 울어 대는것을보니, 돼지가 병이 났나 보다. 내일 아침에 의사를 불러야겠다.', 'f1', 10)
,(null, 18, '날이 밝자, 할머니가 의사를 불러 오셨습니다.', 'n', 10)
,(null, 19, '의사는 돼지의 엉덩이에 침을 놓았습니다.', 'n', 10)
,(null, 20, '돼지는 아파서 꿀꿀거리며 엉뚱한 생각을 하였습니다. ', 'n', 10)
,(null, 21, '할머니께서 집을 더 잘 지키라고 침을 놓아 주시나보다. ', 'm1', 10)
,(null, 22, '그날 밤에도, 또 다음날 밤에도, 돼지는 큰 소리로 꿀꿀거렸습니다. ', 'n', 10)
,(null, 23, '꿀꿀, 꿀꿀, 꿀꿀! ', 'm1', 10)
,(null, 24, '꿀꿀꿀, 꿀꿀꿀! ', 'm1', 10)
,(null, 25, '할머니는 돼지 울음소리 때문에 잠을 잘 수 없었습니다. ', 'n', 10)
,(null, 26, '할머니는 몹시 화가 나셨습니다. ', 'n', 10)
,(null, 27, '밤이면밤마다울어대니잠을잘수가없구나. 내일 아침 날이 밝으면 장에 내다 팔아야겠다.', 'f1', 10)
,(null, 28, '이튿날, 할머니가 돼지를 장에 내다 파셨습니다.', 'n', 10)
,(null, 29, '돼지는 할머니의 사랑을 더 받으려다 그만 팔려가고 말았습니다. ', 'n', 10)
;
insert into titles (id, title) values (null, '작은 씨앗의 꿈')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '따뜻한 봄이었어요. 땅 위에 조그만 씨앗 하나가 놓여 있었지요. ', 'n', 11)
,(null, 2, '팔랑팔랑 나비 한 마리가 씨앗 곁으로 날아왔어요. ', 'n', 11)
,(null, 3, '넌 누구니?', 'f2', 11)
,(null, 4, '난 씨앗이야.', 'f1', 11)
,(null, 5, '씨앗? 그건 처음 들어보는 이름인데? 넌 참 까맣고 못생겼구나. ', 'f2', 11)
,(null, 6, '나비는 멀리 날아가 버렸어요. ', 'n', 11)
,(null, 7, '난 왜 이렇게 못 생겼을까?', 'f1', 11)
,(null, 8, '씨앗이 속상해 하고 있을 때, 하늘에서 해님이 말했어요. ', 'n', 11)
,(null, 9, '씨앗아~ 걱정하지마! 넌 꼭 예뻐질 수 있을거야. ', 'm1', 11)
,(null, 10, '고마워요. 해님! ', 'f1', 11)
,(null, 11, '해님의 말에 씨앗은 조금 용기가 났어요. ', 'n', 11)
,(null, 12, '그때 땅 위에서 꼬물꼬물 애벌레가 기어왔어요. ', 'n', 11)
,(null, 13, '어이구, 이건 뭐야? 에게? 조그만 게 눈도 없잖아. ', 'f3', 11)
,(null, 14, '난 씨앗이야.', 'f1', 11)
,(null, 15, '씨앗? 넌 발도 없니?', 'f3', 11)
,(null, 16, '응, 난 움직일 수가 없어.', 'f1', 11)
,(null, 17, '어휴, 못 생긴 데다가 움직이지도 못하네. ', 'f3', 11)
,(null, 18, '씨앗은 슬펐어요.', 'n', 11)
,(null, 19, '씨앗아, 걱정하지 마. 내가 너를 움직이게 해줄게. ', 'm2', 11)
,(null, 20, '바람 아저씨가 씨앗을 안아다가 어느 조그만 밭에 놓고 갔어요. ', 'n', 11)
,(null, 21, '캄캄한 밤이 되었지요. ', 'n', 11)
,(null, 22, '아이, 추워! ', 'f1', 11)
,(null, 23, '씨앗이 오들오들 떨고 있을때, 옆에 있던 흙이 말했어요. ', 'n', 11)
,(null, 24, '걱정하지 마! 내가 너를 따뜻하게 덮어줄게. ', 'm3', 11)
,(null, 25, '흙이 씨앗을 따뜻하게 덮어주자 하늘에선 비가 내리기 시작했어요. ', 'n', 11)
,(null, 26, '아이, 목말라. 꿀꺽꿀꺽. ', 'f1', 11)
,(null, 27, '씨앗은 밤새 빗물을 받아먹었지요.', 'n', 11)
,(null, 28, '어! 그런데 이게 웬일이지요?', 'n', 11)
,(null, 29, '아침이 되자 씨앗은 어디로 가고, 그 자리엔 예쁜 새싹이 자라나고 있었어요.', 'n', 11)
,(null, 30, '그리고 여러 날 지나 예쁜 꽃을 피우게 되었지요. ', 'n', 11)
,(null, 31, '해님! 바람님! 비님! 흙님! 모두모두 고마워요. 여러분이 아니었으면 난 아직도 못생기고 작은 씨앗으로 남아 있었을 거예요. ', 'f1', 11)
,(null, 32, '밭에서는 예쁜 꽃이 환하게 웃고 있었습니다.', 'n', 11)
;
insert into titles (id, title) values (null, '금도끼와 은도끼')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날 옛날 깊은 산골에 한 나무꾼이 살고 있었어요.', 'n', 12)
,(null, 2, '어느 날 연못가에서 나무를 자르다가 그만 도끼를 연못에 풍덩 빠뜨리고 말았어요.', 'n', 12)
,(null, 3, '나무꾼은 어찌할 바를 몰라 연못 주변을 서성거리고 있었어요. ', 'n', 12)
,(null, 4, '그때 연못물이 흔들리더니 수염이 하얀 신령님이 나타나셨어요. ', 'n', 12)
,(null, 5, '신령님은 번쩍거리는 금도끼를 보여주며 물으셨어요. ', 'n', 12)
,(null, 6, '이것이 네 것이냐?', 'm1', 12)
,(null, 7, '아니옵니다. 그것은 제 것이 아니옵니다. ', 'm2', 12)
,(null, 8, '신령님은 다시 물 속에 들어갔다 나오시더니 이번에는 번쩍이는 은도끼를 보여주며 물으셨어요. ', 'n', 12)
,(null, 9, '이것이 네 것이냐?', 'm1', 12)
,(null, 10, '아니옵니다. 그것은 제 것이 아니옵니다. ', 'm2', 12)
,(null, 11, '신령님은 다시 물 속에 들어가셨어요. ', 'n', 12)
,(null, 12, '이번에는 오래된 쇠도끼를 들고 나오셨어요. ', 'n', 12)
,(null, 13, '이것이 네 것이냐?', 'm1', 12)
,(null, 14, '예. 맞습니다. 그것이 제 것이옵니다. ', 'm2', 12)
,(null, 15, '하하하~. 너는 참으로 정직하구나. 내가 너에게 금도끼와 은도끼를 다 줄 것이니라.', 'm1', 12)
,(null, 16, '나무꾼은 산에서 내려와 어머니를 모시고 행복하게 잘 살았어요. ', 'n', 12)
,(null, 17, '정직한 나무꾼의 이야기를 들은 욕심 많은 나무꾼은 연못으로 달려가 일부러 쇠도끼를 연못에 던졌어요. ', 'n', 12)
,(null, 18, '아이고, 아이고~ 내 도끼! ', 'm3', 12)
,(null, 19, '그러자 신령님이 나타나셨어요. ', 'n', 12)
,(null, 20, '신령님은 금도끼, 은도끼를 들고 나와 물으셨어요. ', 'n', 12)
,(null, 21, '이것이 네 것이냐?', 'm1', 12)
,(null, 22, '그렇습니다. 그것 모두 다 제 것이옵니다. ', 'm3', 12)
,(null, 23, '욕심 많은 나무꾼은 거짓말을 했어요. ', 'n', 12)
,(null, 24, '네, 이놈. 거짓말을 하다니! ', 'm1', 12)
,(null, 25, '신령님은 화가 나서 연못 속으로 쑥 들어가 버리셨어요. ', 'n', 12)
,(null, 26, '아무리 기다려도 욕심 많은 나무꾼은 신령님을 볼 수가 없었어요. ', 'n', 12)
,(null, 27, '흑흑~. 하나뿐인 쇠도끼인데 괜히 욕심을 부리다가 그만.... ', 'm3', 12)
,(null, 28, '욕심 많은 나무꾼은 후회했지만 아무 소용이 없었어요. ', 'n', 12)
;
insert into titles (id, title) values (null, '진짜 부자')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '북쪽 마을에 소문난 부자 윤노인이 살고있었어요. ', 'n', 13)
,(null, 2, '어느 날, 윤노인은 이상한 꿈을 꾸었어요. ', 'n', 13)
,(null, 3, '윤 노인은 들어라. 내일 정오에 이 마을에서 가장 부자인 사람이 죽게 될 것이다. 그러니 미리 준비하여 장례식을 성대하게 치르도록 하여라. ', 'm1', 13)
,(null, 4, '수염이 허연 신령님이 나타나 이렇게 말하는 것이 아니겠어요? ', 'n', 13)
,(null, 5, '그런데 꿈이 어찌 생생한지 잠에서 깨어난 뒤에도 또렷했어요. ', 'n', 13)
,(null, 6, '이 마을에서 가장 부자라면 나를 말하는 것이 아닌가. 아아. 깊은 병이라도 들었단 말인가. 하늘도 무심하시지.', 'm2', 13)
,(null, 7, '윤 노인은 억울한 생각이 들었어요. 그래서 서둘러 하인을 불렀지요. ', 'n', 13)
,(null, 8, '돌쇠야, 돌쇠야~.', 'm2', 13)
,(null, 9, '예, 예 부르셨습니까?', 'm3', 13)
,(null, 10, '마을에서 가장 훌륭한 의원을 모셔 오도록 해. 내 병을 고치는 의원에게는 내 재산의 절반을 줄것이야. 서둘러 모셔 오도록 해라 ', 'm2', 13)
,(null, 11, '예? 주인님 어디가 아프십니까? ', 'm3', 13)
,(null, 12, '딴소리 말고. 시간이 없어. 얼른! ', 'm2', 13)
,(null, 13, '그러자, 소문은 순식간에 퍼져갔어요. ', 'n', 13)
,(null, 14, '이름난 의원들은 모조리 윤 노인의 병을 고치겠다고 나섰지요. ', 'n', 13)
,(null, 15, '음....도통알수가없군. 몸에 이상이 있기는 커녕 젊은 사람들 보다 더 튼튼한걸? ', 'm1', 13)
,(null, 16, '의원들은 하나같이 고개를 갸웃거리며 돌아갔어요.', 'n', 13)
,(null, 17, '다음날이 되었어요.', 'n', 13)
,(null, 18, '그런데, 이상한 일이죠? 정오가 지나도 윤 노인은 멀쩡했던 거예요. ', 'n', 13)
,(null, 19, '허, 거참 이상한 일이군. 그렇다면 혹시 이 마을에 나보다 더 부자가 있는 것은 아닐까? ', 'm2', 13)
,(null, 20, '얘, 돌쇠야, 돌쇠야~ ', 'm2', 13)
,(null, 21, '예, 주인 어른.', 'm3', 13)
,(null, 22, '혹시 우리 마을에 오늘 정오에 죽은 사람이 있느냐?', 'm2', 13)
,(null, 23, '예. 있습죠. 다리 밑에 사는 박 영감님이 오늘 돌아가셨답니다. 흑흑 ', 'm3', 13)
,(null, 24, '뭐야? 박 노인이! ', 'm2', 13)
,(null, 25, '윤 노인은 깜짝 놀랐어요.', 'n', 13)
,(null, 26, '박 노인이라면 이 마을에서 가장 가난한 사람이었거든요. ', 'n', 13)
,(null, 27, '옷이 없어서 한겨울에도 속옷을 입지 못할 지경이었으니까요. ', 'n', 13)
,(null, 28, '안되겠군. 내가 가봐야겠어. ', 'm2', 13)
,(null, 29, '믿을 수가 없어 윤노인은 직접 박노인이 살던 집으로 갔어요. ', 'n', 13)
,(null, 30, '그런데 이게 웬일이에요? 박 노인의 죽음을 슬퍼한 나머지 사람들이 구름 떼처럼 몰려온 것이었어요.', 'n', 13)
,(null, 31, '쯧쯧쯧. 가진 건 모두 다른 사람들에게 나눠주고 조금의 욕심도 없는 분이셨는데.... ', 'm4', 13)
,(null, 32, '흑흑. 그러게 말예요. 거저 나눠주고, 어려운 일은 어떻게든 도와주려 했지요 ', 'f1', 13)
,(null, 33, '이 마을에서 가장 가난하게 살았지만 마음만은 항상 부자셨지요. ', 'm1', 13)
,(null, 34, '그 소리를 들은 윤 노인은 한없이 부끄러워졌어요. ', 'n', 13)
,(null, 35, '난 내가 지금까지 가장 부자인 줄만 알았어. 그런데 진짜 부자는 따로 있었네 그려. 살았을 때도 마음만은가장 부자로 살았고, 죽은 다음에도 이 사람들이 다 재산이구먼. 그러니 돈만 많은 나보다야 얼마나 부자인가.', 'm2', 13)
,(null, 36, '윤 노인은 지난날을 후회했어요.', 'n', 13)
,(null, 37, '그리고 신령님의 말씀대로 박 노인의 장례를 성대하게 치러주었답니다. ', 'n', 13)
;
insert into titles (id, title) values (null, '두꺼비 정승')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날 옛날 창빗골이라는 마을에 착한 부부가 살고 있었어요. ', 'n', 14)
,(null, 2, '부부는 서로 아끼고 사랑하며 살았지만 자식이 없었어요. ', 'n', 14)
,(null, 3, '여보, 우리에게는 왜 자식이 없는 걸까요? 우리에게도 예쁘고 사랑스런 아이가 있다면 정말 좋을 텐데.... ', 'f1', 14)
,(null, 4, '걱정 말아요. 지성이면 감천이라고 우리가 매일 정성을 다해 기도하면 아이를 갖게 될 거요. ', 'm1', 14)
,(null, 5, '부부의 정성어린 기도에 하늘도 감동을 하였는지 드디어 아이를 갖게 되었어요.', 'n', 14)
,(null, 6, '열 달이 지나 아기가 태어났어요. ', 'n', 14)
,(null, 7, '그런데 아기를 본 남편은 깜짝 놀랐어요.', 'n', 14)
,(null, 8, '아기 얼굴이 영락없는 두꺼비 얼굴이네, 어떡하지! ', 'm1', 14)
,(null, 9, '뭐라구요? 두꺼비 얼굴? ', 'f1', 14)
,(null, 10, '아기의 모습을 본 부부는 놀랍고 실망스러웠지만, 하늘이 준 선물이라 생각하고 잘 키우기로 했지요.', 'n', 14)
,(null, 11, '하지만 동네에서는 두꺼비 아들을 낳았다며 수군거렸어요. ', 'n', 14)
,(null, 12, '아 글쎄 두꺼비하고 똑같다지 뭐예요. ', 'f2', 14)
,(null, 13, '어떻게 두꺼비 아들을 낳을 수 있다지. 울퉁불퉁 못생긴 두꺼비라면.... 아유, 생각만 해도 흉측하겠네! ', 'f2', 14)
,(null, 14, '동네 사람들이 두꺼비 아들을 놀려대자 부부는 마음이 아팠어요. ', 'n', 14)
,(null, 15, '그래도 부부는 사랑과 정성으로 두꺼비 아들을 키웠어요. ', 'n', 14)
,(null, 16, '두꺼비 아들이 자라서 밖에 놀러 나가자 동네 아이들이 두꺼비라고 놀려댔어요. ', 'n', 14)
,(null, 17, '두껍아, 두껍아, 헌 집 줄게 새 집 다오.', 'm2', 14)
,(null, 18, '꺼비, 꺼비 얼굴은 두꺼비래요. 울퉁불퉁 못생긴 두꺼비래요. ', 'm2', 14)
,(null, 19, '히히, 정말 두꺼비처럼 못생겼다. 이제부터 두꺼비라고 부르자. ', 'm2', 14)
,(null, 20, '그래, 그래 ', 'm2', 14)
,(null, 21, '동네 아이들이 두꺼비라고 놀리자 아들은 너무 슬펐지요. ', 'n', 14)
,(null, 22, '아냐, 난 두꺼비가 아니라구. ', 'm3', 14)
,(null, 23, '친구도 없고 외톨이가 된 두꺼비 아들은 공부를 하기로 마음먹었어요. ', 'n', 14)
,(null, 24, '아버지, 저도 공부하고 싶어요. 공부시켜 주세요.', 'm3', 14)
,(null, 25, '글쎄, 누가 너를 받아 줄는지 모르겠구나. ', 'm1', 14)
,(null, 26, '아버지는 아들을 데리고 훈장님을 찾아갔어요.', 'n', 14)
,(null, 27, '훈장님, 제 아들도 공부를 할 수 있을까요?', 'm1', 14)
,(null, 28, '그럼요. 남들이 뭐라 하든 더 열심히 하면 되는 거지요. ', 'm4', 14)
,(null, 29, '고맙습니다. 앞으로 열심히 하겠습니다. ', 'm3', 14)
,(null, 30, '두꺼비 아들은 열심히 공부를 하였습니다. ', 'n', 14)
,(null, 31, '두꺼비 아들이 어느덧 청년이 되어 장가갈 나이가 되었어요. ', 'n', 14)
,(null, 32, '아버지, 저도 이제 나이도 들고 하였으니 장가를 가고 싶습니다. ', 'm3', 14)
,(null, 33, '장가를 가겠다고? ', 'm1', 14)
,(null, 34, '네. 건너 마을에 사는 김 판서댁 따님과 혼인하고 싶습니다. ', 'm3', 14)
,(null, 35, '그건 안된다. 어찌 우리가 그 집에 청혼을 할 수 있단 말이냐! ', 'm1', 14)
,(null, 36, '아버지, 되든 안 되든 그 댁에 청혼을 해주세요. ', 'm3', 14)
,(null, 37, '아버지는 하는 수 없이 김 판서댁을 찾아갔어요. ', 'n', 14)
,(null, 38, '뭐라구? 내 딸을 두꺼비에게 시집보내라고? 어디서 감히, 썩 나가지 못할꼬!', 'm4', 14)
,(null, 39, '아버지는 문 밖으로 쫓겨나 터덜터덜 집으로 돌아왔어요.', 'n', 14)
,(null, 40, '김 판서댁 딸은 아버지의 마음이 가라앉을 즈음에 조용히 말했어요. ', 'n', 14)
,(null, 41, '아버님, 그 도령은 비록 얼굴은 흉하고 두꺼비처럼 생겼지만 총명하고 착한 청년이라 들었습니다. 그 청년과 혼인할 수 있도록 허락하여 주십시오. ', 'f3', 14)
,(null, 42, '안 된다. 하나밖에 없는 귀한 내 딸을 두꺼비에게 시집보낼 수는 없다.', 'm4', 14)
,(null, 43, '하지만 김판서 딸의 끈질긴 청에 김판서도 결국은 혼인을 허락하고 말았어요.', 'n', 14)
,(null, 44, '두꺼비 아들과 혼인한 김 판서 딸은 시부모님과 남편을 잘 섬겼어요. ', 'n', 14)
,(null, 45, '서방님, 곧 있으면 과거시험입니다. 집안 일은 제게 맡기고 과거를 준비하세요. ', 'f3', 14)
,(null, 46, '고맙소. 내 공부를 열심히 하여 과거시험에 꼭 붙으리다. ', 'm3', 14)
,(null, 47, '두꺼비 아들은 밤이고 낮이고 열심히 공부를 하였어요. 드디어 과거시험을 보는 날이 왔어요. ', 'n', 14)
,(null, 48, '난 할 수 있어. 과거시험에 꼭 붙어서 나처럼 어렵고 힘든 사람을 도우며 살 거야.', 'm3', 14)
,(null, 49, '과거시험을 본 두꺼비 아들은 과거에서 장원으로 뽑혔어요. ', 'n', 14)
,(null, 50, '아니, 저건 두꺼비 아냐?', 'm2', 14)
,(null, 51, '그러게 말이야. 두꺼비가 장원 급제를 하다니 거참 신기한 걸 ', 'm2', 14)
,(null, 52, '동네 사람들이 놀라운 듯 두꺼비 아들을 바라보았어요. ', 'n', 14)
,(null, 53, '임금님이 어사화를 두꺼비 아들 머리 위에 씌워 주었어요. ', 'n', 14)
,(null, 54, '어, 도대체 이게 무슨 일이야?', 'm4', 14)
,(null, 55, '아니 이럴 수가. 두꺼비 아들의 인물이 이렇게 훤할 줄이야. ', 'm2', 14)
,(null, 56, '동네 사람들은 깜짝 놀라 눈이 휘둥그레졌어요. ', 'n', 14)
,(null, 57, '두꺼비 가족들도 깜짝 놀라 아무말도 할 수 없었어요.', 'n', 14)
,(null, 58, '경사 났네. 경사 났어.', 'm4', 14)
,(null, 59, '우리 마을에 과거 급제하여 훌륭한 정승감이 나왔으니 경사요. ', 'm2', 14)
,(null, 60, '두꺼비 가족과 동네 사람들은 잔치를 벌이고 덩실덩실 춤을 추며 좋아했어요.', 'n', 14)
,(null, 61, '이제부터 두꺼비 아들을 두꺼비 정승이라 부르기로 하세 ', 'm4', 14)
,(null, 62, '동네 사람들은 두꺼비 아들을 두꺼비 정승이라 부르며 좋아했어요. ', 'n', 14)
,(null, 63, '두꺼비 정승은 그 뒤에 어려운 사람들을 아끼고 돌보는 훌륭한 정승이 되었답니다.', 'n', 14)
;
insert into titles (id, title) values (null, '오성과 한음')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '무더운 여름이 지나고 어느덧 가을이 왔습니다. ', 'n', 15)
,(null, 2, '어느날 아침, 한음 이덕형이 친한친구인 오성 이항복의 집에 놀러 왔습니다.', 'n', 15)
,(null, 3, '오성의 집 마당 큰 감나무에는 빨간 감들이 탐스럽게 열려 있었습니다. ', 'n', 15)
,(null, 4, '이 감나무 가지는 담 너머 옆집까지 뻗어 있었습니다. ', 'n', 15)
,(null, 5, '야, 저 감 참 맛있겠다!', 'm1', 15)
,(null, 6, '한음이 담 너머에 있는 감을 가리키며 말하였습니다.', 'n', 15)
,(null, 7, '오성은 한음의 마음을 알아채고 하인을 불렀습니다. 그러나 하인은 그 감을 딸 수 가 없다고하였습니다.', 'n', 15)
,(null, 8, '옆집 하인들이 그 쪽으로 넘어간 감나무 가지를 자기네 것이라고 우기며 감을 따지 못하게 하기 때문이었습니다. ', 'n', 15)
,(null, 9, '아니, 세상에 그럴 수가....', 'm1', 15)
,(null, 10, '한음이 어이없다는 듯이 말하였습니다. ', 'n', 15)
,(null, 11, '그런 경우가 어디 있어? 아무리 담 너머로 가지가 넘어갔어도 감나무는 우리 것인데. ', 'm1', 15)
,(null, 12, '글쎄 말이야, 옆집에 사는 사람이 도대체 누구니? ', 'm2', 15)
,(null, 13, '권 판서 대감님이야.', 'm1', 15)
,(null, 14, '오성의 옆집에는 권철 대감이 살고 있었습니다. ', 'n', 15)
,(null, 15, '권 판서는 임진왜란때 행주산성 싸움에서 큰 승리를 거둔 권율 장군의 아버지였습니다. ', 'n', 15)
,(null, 16, '그는 매우 어진 사람이었으나, 그 집의 하인들은 가끔 오성네 하인들을 함부로 대하였습니다. ', 'n', 15)
,(null, 17, '무슨 좋은 방법이 없을까?', 'm2', 15)
,(null, 18, '오성과 한음은 서로 머리를 맞대고 궁리를 하였습니다. 갑자기 한음이 큰 소리로 말하였습니다. ', 'n', 15)
,(null, 19, '좋은 생각이 났어. ', 'm1', 15)
,(null, 20, '그래? 뭔데? ', 'm2', 15)
,(null, 21, '오성은 한음의 말을 듣고, 고개를 끄덕이며 미소를 지었습니다. ', 'n', 15)
,(null, 22, '오성과 한음은 곧 권 판서 댁을 찾아갔습니다. ', 'n', 15)
,(null, 23, '두 소년은 권 판서 댁 하인을 앞세우고 가서 대감이 있는 사랑방 앞에 우뚝 섰습니다. ', 'n', 15)
,(null, 24, '밖에 누가 왔느냐?', 'm3', 15)
,(null, 25, '인기척을 느낀 권 판서가 물었습니다. ', 'n', 15)
,(null, 26, '대감님, 저의 무례함을 용서하십시오.', 'm2', 15)
,(null, 27, '오성은 창호지를 바른 방문 안으로 팔을 쑥 들이밀었습니다. ', 'n', 15)
,(null, 28, '책을 읽고 있던 권 판서는 방문을 뚫고 들어온 팔을 보고 깜짝 놀랐습니다. ', 'n', 15)
,(null, 29, '아니, 어떤 놈인데 이렇게 무례한 행동을 하느냐? ', 'm3', 15)
,(null, 30, '접니다. 이웃에 사는 항복입니다. ', 'm2', 15)
,(null, 31, '항복이라면 옆집 이 참판 댁 아들이 아니냐? 도대체 이게 무슨 무례한 행동이냐?', 'm3', 15)
,(null, 32, '오성은 손을 들이민 채, 권 판서에게 정중하게 사과하였습니다. 그러고는 곧 낮은 목소리로 다시 말하였습니다. ', 'n', 15)
,(null, 33, '대감님, 지금 이 팔이 누구 팔입니까?', 'm2', 15)
,(null, 34, '그야 네 팔이지, 누구 팔이겠느냐? ', 'm3', 15)
,(null, 35, '지금 이 팔은 방안에 들어가 있지 않습니까? ', 'm2', 15)
,(null, 36, '방 안에 있다 해도 네 몸에 붙었으니까 네 팔이지. ', 'm3', 15)
,(null, 37, '권 판서는 오성의 당돌한 질문에 호기심을 느꼈습니다. ', 'n', 15)
,(null, 38, '그렇다면 한 말씀 더 여쭙겠습니다. 저 담 너머에서 뻗어 나온 감나무 가지는 누구네 것입니까? ', 'm2', 15)
,(null, 39, '권 판서는 오성이 무엇 때문에 방문을 뚫고 팔을 들이밀었는지 그 뜻을 금방 깨달았습니다. ', 'n', 15)
,(null, 40, '글재주가 보통이 아니라더니 과연 대단한 아이로구나! ', 'm3', 15)
,(null, 41, '이런 생각을 하며 권 판서가 대답하였습니다. ', 'n', 15)
,(null, 42, '음, 그야 너희 것이지.', 'm3', 15)
,(null, 43, '가지가 이 댁에 넘어왔는데도요?', 'm2', 15)
,(null, 44, '그렇다 해도 밑동과 줄기가 너희 집에 있지 않느냐?', 'm3', 15)
,(null, 45, '그렇다면 왜 대감댁 하인들이 저희 하인들에게 감을 못따게합니까? ', 'm2', 15)
,(null, 46, '우리 집 하인들이 생각이 모자랐던 것 같구나. 다시는 그런 일이 없도록 하마. ', 'm3', 15)
,(null, 47, '그리하여 오성과 한음은 잘 익은 감을 맛있게 먹을 수 있었습니다.', 'n', 15)
;
insert into titles (id, title) values (null, '짧아진 바지')
;
insert into contents (id, line_index, contents, talker_identifier, title_id) values
(null, 1, '옛날, 어느 마을에 한 부자가 살고 있었습니다.', 'n', 16)
,(null, 2, '그 부자에게는 딸 셋이 있었습니다. ', 'n', 16)
,(null, 3, '세 딸은 아버지의 재산을 더 많이 물려받기 위해서 서로 자기가 아버지를 잘 모신다고 뽐냈습니다. ', 'n', 16)
,(null, 4, '첫째 딸이 말하였습니다. ', 'n', 16)
,(null, 5, '이 세상에서 아버지를 가장 잘 모시는 사람은 바로 나야. 그러니까 아버지께서는 나에게 가장 많은 재산을 물려주실 거야. ', 'f1', 16)
,(null, 6, '둘째 딸도 말하였습니다. ', 'n', 16)
,(null, 7, '나는 아버지를 위해서 무엇이든지 할 수 있어. 아버지의 재산은 내가 가장 많이 가져야 돼. ', 'f2', 16)
,(null, 8, '그러자 셋째 딸도 지지 않고 말하였습니다. ', 'n', 16)
,(null, 9, '흥, 언니들은 아버지의 재산을 물려받고 시집을 가 버리면 그만이지만, 나는 시집도 안 가고 아버지와 함께 살거야. 그러니까 내가 재산을 가장 많이 물려받아야 해.', 'f3', 16)
,(null, 10, '부자는 자기 딸들이 세상에서 가장 효성스럽다고 생각하였습니다. ', 'n', 16)
,(null, 11, '하지만, 마을 사람들은 그 부잣집 딸들보다 이웃 마을에 사는 선비의 세 딸이 더 효성스럽다고 칭찬하였습니다.', 'n', 16)
,(null, 12, '부자는 선비의 딸들이 어째서 자기의 딸들보다 더 칭찬을 받는지 궁금하였습니다.', 'n', 16)
,(null, 13, '어느 무더운 여름날, 부자는 선비의 집을 방문하였습니다. ', 'n', 16)
,(null, 14, '그런데 선비는 무릎이 다 드러나는 짧은 바지를 입고 있었습니다. ', 'n', 16)
,(null, 15, '아무리 덥더라도 점잖은 선비 체면에 무릎이 다 드러나는 짧은 바지를 입고 있다니.... ', 'm1', 16)
,(null, 16, '부자는 이상한 생각이 들었습니다.', 'n', 16)
,(null, 17, '그래서 선비에게 넌지시 물어 보았습니다. ', 'n', 16)
,(null, 18, '아니, 어찌하여 무릎이 다 드러나는 짧은 바지를 입고 계십니까? ', 'm1', 16)
,(null, 19, '선비는 껄껄 웃으면서 바지가 짧아진 사정에 대하여 이야기를 해주었습니다.', 'n', 16)
,(null, 20, '며칠 전에 선비는 먼 친척에게서 선물로 옷감을 받았습니다.', 'n', 16)
,(null, 21, '마침마땅히입을옷이없어서여름옷한벌을해입기로하였습니다. ', 'n', 16)
,(null, 22, '그런데 새로 지은 옷을 입어 보니 바지가 한 뼘이나 길어서 땅에 질질 끌렸습니다.', 'n', 16)
,(null, 23, '선비는세 딸이 모여 있는 방밖에서 헛기침을 하며 말하였습니다. ', 'n', 16)
,(null, 24, '얘들아, 누가 내 바지를 한 뼘만 줄여다오. ', 'm2', 16)
,(null, 25, '네. ', 'f1', 16)
,(null, 26, '하고 세 딸은 일제히 대답하였습니다.', 'n', 16)
,(null, 27, '이튿날 오후가 되었습니다.', 'n', 16)
,(null, 28, '선비는 외출을 하기 위하여 그 바지를 입으려고 하였습니다. ', 'n', 16)
,(null, 29, '그런데 줄여 놓은 바지가 너무 짧아서 무릎이 다 드러났습니다. ', 'n', 16)
,(null, 30, '선비는 깜짝 놀라 세 딸을 불러 놓고 말하였습니다. ', 'n', 16)
,(null, 31, '아니, 어젯밤에 내가 분명히 바지를 한 뼘만 줄여 달라고 하지 않았느냐?그런데 바지를 이렇게 짧게 줄여 놓아서 도저히 입고 나갈 수가 없구나. ', 'm2', 16)
,(null, 32, '첫째 딸이 고개를 갸우뚱거리며 말하였습니다. ', 'n', 16)
,(null, 33, '그것 참, 이상하네요. 제가 어젯밤에 아버지께서 말씀하신 대로 분명히 바지를 한 뼘만 줄여 놓았는데요.', 'f1', 16)
,(null, 34, '그러자 둘째 딸이 깜짝 놀라며 말하였습니다. ', 'n', 16)
,(null, 35, '언니가 그런 줄도 모르고 오늘 새벽에 일어나 그 바지를 제가 한 뼘 줄여 놓았어요. 죄송해요, 아버지. ', 'f2', 16)
,(null, 36, '언니들의말을듣고있던셋째딸도 기어들어가는 목소리로 말하였습니다. ', 'n', 16)
,(null, 37, '이걸 어쩌면 좋아? 저는 언니들이 줄여 놓은 줄도 모르고 오늘 아침에 저도 한 뼘을 줄여 놓았어요.', 'f3', 16)
,(null, 38, '세 딸은 모두 어쩔 줄 몰라 하며 아버지께 용서를 빌었습니다. 그러자 선비가 웃으며 말하였습니다. ', 'n', 16)
,(null, 39, '아니다, 얘들아 너희가 줄여 놓은 이 바지야말로 나에게 가장 잘 맞는 바지란다. ', 'm2', 16)
,(null, 40, '선비에게 이 이야기를 들은 부자는 고개를 끄덕이며 집으로 돌아왔습니다.', 'n', 16)
,(null, 41, '부자는 자기의 세 딸이 참으로 효성스러운지 시험하여 보기로 하였습니다. ', 'n', 16)
,(null, 42, '그래서 자기의 바지를 들고 딸들에게 말하였습니다. ', 'n', 16)
,(null, 43, '얘들아, 이 바지가 너무 길어서 입을 수가 없구나. 내일 점심 때까지 너희 가운데에서 누가 이 바지를 한 뼘만 줄여다오. ', 'm1', 16)
,(null, 44, '네. ', 'f1', 16)
,(null, 45, '하고 부자의 세 딸이 대답하였습니다.', 'n', 16)
,(null, 46, '그런데 이튿날 오후에 보니 바지는 어제 그대로였습니다. ', 'n', 16)
,(null, 47, '부자는 세 딸을 불러 놓고 물었습니다.', 'n', 16)
,(null, 48, '아니, 얘들아. 어젯밤에 내가 바지를 줄여 달라고 하지 않았느냐? 그런데 어째서 바지가 그대로 있느냐? ', 'm1', 16)
,(null, 49, '첫째 딸이 눈을 동그랗게 뜨고 말하였습니다. ', 'n', 16)
,(null, 50, '아니, 그 바지가 그대로 있습니까? 저는 둘째가 줄여 놓은 줄 알았는데요. ', 'f1', 16)
,(null, 51, '둘째 딸은 셋째 딸을 바라보며 말하였습니다.', 'n', 16)
,(null, 52, '그런 일이라면 당연히 막내가 해야 하지 않겠어요? ', 'f2', 16)
,(null, 53, '그러자 셋째 딸이 화를 내며 말하였습니다. ', 'n', 16)
,(null, 54, '아니, 아직 바느질도 서투른 제가 그런걸 어떻게 해요? 그런 건 언니들이 알아서 해야지요.', 'f3', 16)
,(null, 55, '이 모습을 지켜본 부자는 크게 한숨을 내쉬었습니다. ', 'n', 16)
;