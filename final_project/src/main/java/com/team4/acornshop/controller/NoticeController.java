package com.team4.acornshop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.NoticeDto;
import com.team4.acornshop.service.NoticeService;

@Controller
public class NoticeController {

	/*
	 * @Autowired private NoticeService noticeService;
	 */

	@RequestMapping("/notice/list")
	public ModelAndView list(ModelAndView mView) {
		mView.setViewName("notice/list");
		return mView;
	}

	/*
	 * @RequestMapping("/notice/list") public ModelAndView
	 * getList(HttpServletRequest request ,ModelAndView mV) {
	 * noticeService.getList(request); mV.setViewName("notice/list"); return mV; }
	 * 
	 * @RequestMapping("/notice/insertform") public ModelAndView
	 * insertForm(ModelAndView mV) {
	 * 
	 * mV.setViewName("notice/insertform"); return mV; }
	 * 
	 * @RequestMapping("/notice/insert") public ModelAndView insert(NoticeDto dto,
	 * ModelAndView mV) { noticeService.saveContent(dto);
	 * mV.setViewName("notice/insert"); return mV; }
	 * 
	 * @RequestMapping("/notice/detail") public ModelAndView
	 * detail(HttpServletRequest request, ModelAndView mV) {
	 * noticeService.getDetail(request); mV.setViewName("notice/detail"); return mV;
	 * }
	 */
}
