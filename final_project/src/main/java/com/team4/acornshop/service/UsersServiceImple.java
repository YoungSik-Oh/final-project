package com.team4.acornshop.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.NaverMail;
import com.team4.acornshop.dao.UsersDao;
import com.team4.acornshop.dto.UsersDto;

@Service
public class UsersServiceImple implements UsersService{
	@Autowired
	private UsersDao usersDao;

	
	public Map<String, Object> checkId(String id) {
		Map<String, Object> map = new HashMap<>();
		
		boolean isValid = usersDao.checkId(id);
		
		map.put("isValid", isValid);
		
		return map;
	}


	@Override
	public void signup(UsersDto dto) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String newPwd = encoder.encode(dto.getPwd());
		dto.setPwd(newPwd);
		usersDao.signup(dto);
	}


	@Override
	public void login(UsersDto dto, HttpSession session, ModelAndView m) {
		boolean isValid = false;
		//로그인을 하기 위해 미리 암호화 해서 넣어둔 비밀번호와
		//입력한 비밀번호를 대조해서 true가 나오면 로그인을 할 수 있게 한다.
		UsersDto dbDto = usersDao.getData(dto.getId());
		if(dbDto != null) {
			String dbPwd = dbDto.getPwd();
			String inputPwd = dto.getPwd();
			isValid = BCrypt.checkpw(inputPwd, dbPwd);
		}
		
		if(isValid) {
			session.setAttribute("id", dto.getId());
			m.addObject("isValid", isValid);
			
		}else {
			m.addObject("isValid", isValid);
		}
	}


	@Override
	public Map<String, Object> loginProcess(UsersDto dto) {
		Map<String, Object> map = new HashMap<>();
		boolean isExist = usersDao.loginProcess(dto);
		
		map.put("isExist", isExist);
		
		return map;
	}


	@Override
	public ModelAndView myPage(String id, ModelAndView m) {
		UsersDto dto = usersDao.getData(id);
		m.addObject("dto", dto);
		return m;
	}


	@Override
	public Map<String, Object> pwdConfirm(UsersDto dto) {
		Map<String, Object> map = new HashMap<>();
		//입력한 pwd와 getdata에 있는 pwd를 비교해서 
		//맞으면 true 틀리면 false를 전달해준다.
		boolean isValid = false;
		
		String inputPwd = dto.getPwd();
		
		UsersDto dbDto = usersDao.getData(dto.getId());
		String dbPwd = dbDto.getPwd();
		
		if(dbDto != null) {
			isValid = BCrypt.checkpw(inputPwd, dbPwd);
		}
		
		map.put("isValid", isValid);

		return map;
	}


	@Override
	public void privacyUpdate(UsersDto dto) {
		usersDao.privacyUpdate(dto);
	}


	@Override
	public void updatePwd(HttpSession session, UsersDto dto, String newPwd, ModelAndView m) {
		boolean isValid = false;
		//db에 저장된 pwd와 입력한 현재 pwd를 비교하여 true 가 나오면 변경할 newPwd로 설정 후 update 해준다.
		String id = (String)session.getAttribute("id");
		dto.setId(id);
		UsersDto dbDto = usersDao.getData(id);
		//db에서 꺼내온 원래 비밀번호
		String pwd = dbDto.getPwd();
		//페이지에서 입력한 원래 비밀번호
		String inputPwd = dto.getPwd();
		//비교해서 true이면 newPwd로 설정해준다.
		isValid = BCrypt.checkpw(inputPwd, pwd);
		
		if(isValid) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String encodeNewPwd = encoder.encode(newPwd);
			dto.setPwd(encodeNewPwd);
			usersDao.updatePwd(dto);
			
			m.addObject("isValid", isValid);
		}
	}


	@Override
	public void out(ModelAndView m, HttpSession session, UsersDto dto) {
		boolean isValid = false;
		String id = (String)session.getAttribute("id");
		UsersDto dbDto = usersDao.getData(id);
		//db에 저장된 pwd
		String dbPwd = dbDto.getPwd();
		//페이지에서 입력한 pwd
		String inputPwd = dto.getPwd();
		
		//비교해서 true이면 회원탈퇴를 한다.
		isValid = BCrypt.checkpw(inputPwd, dbPwd);
		
		if(isValid) {
			usersDao.out(id);
			m.addObject("isValid", isValid);
			m.addObject("id", id);
			session.invalidate();
		}else {
			m.addObject("isValid", isValid);
		}
	}


	@Override
	public Map<String, Object> findId(UsersDto dto) {
		Map<String, Object> map = new HashMap<>();
		boolean isExist = false;
		//이름과 이메일을 넣어 dao로 보낸다음 받은 결과값을 이용한다.
		UsersDto dbDto = usersDao.findId(dto);
		
		//이름과 이메일을 넣었을 때 나오는 id가 없다면
		if(dbDto == null) {
			map.put("isExist", isExist);
		}else {
			isExist = true;
			map.put("isExist", isExist);
			//아이디를 보여줘야 하므로 id도 보내준다.
			String findId = dbDto.getId();
			map.put("findId", findId);
		}
		return map;
	}


	@Override
	public Map<String, Object> findPwd(String rdNum, UsersDto dto) {
		Map<String, Object> map = new HashMap<>();
		
		boolean isExist = usersDao.findPwd(dto);
		
		if(isExist) { //true이면 입력한 정보에 대한 아이디가 존재함
			//난수와 이메일을 naverSendMail의 인자로 넣어서 메일을 보낸다.
			NaverMail sendNaverMail = new NaverMail();
			sendNaverMail.naverSendMail(rdNum, dto.getEmail());
			//인증할 때 비교해주기 위해서 map에도 담아준다.
			map.put("rdNum", rdNum);
			map.put("isExist", isExist);
		}else {  //false면 입력한 정보에 대한 아이디가 존재하지 않음
			map.put("isExist", isExist);
		}
		return map;
	}


	@Override
	public void updateFindNewPwd(UsersDto dto) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encodedPwd = encoder.encode(dto.getPwd());
		dto.setPwd(encodedPwd);
		usersDao.updateFindNewPwd(dto);
	}


	@Override
	public Map<String, Object> sendRdNum(String rdNum, String email) {
		Map<String, Object> map = new HashMap<>();
		
		boolean isExist = usersDao.emailConfirm(email);
		
		if(isExist) { //true면 이메일이 중복됨
			map.put("isExist", isExist);
		}else {  //false면 이메일 중복 안됨
			NaverMail sendNaverMail = new NaverMail();
			sendNaverMail.naverSendMail(rdNum, email);
			
			map.put("isExist", isExist);
			map.put("rdNum", rdNum);
		}
		return map;
	}	
}