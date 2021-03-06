package kr.co.doogle.back.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.doogle.dto.EventDTO;
import kr.co.doogle.dto.FileDTO;
import kr.co.doogle.file.File;
import kr.co.doogle.mapper.CategoryMapper;
import kr.co.doogle.mapper.EventMapper;
import kr.co.doogle.mapper.FileMapper;
import kr.co.doogle.paging.Paging;

@Controller
public class AdminEventController {

	@Autowired
	private File file;
	@Autowired
	private Paging paging;
	@Autowired
	private FileMapper fileMapper;
	@Autowired
	private CategoryMapper categoryMapper;
	@Autowired
	private EventMapper eventMapper;

	@RequestMapping("/admin/event")
	public ModelAndView event(ModelAndView mv, HttpServletRequest request, EventDTO edto) {
		int page = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
		paging.setPaging(page, eventMapper.getTotal(null, null), "/admin/event");
		mv.addObject("list", eventMapper.getAllPaging(paging.getStartRow(), paging.getViewCnt(), null, null));

		mv.addObject("i", paging.getStartRow());
		mv.addObject("url", "/admin/event");
		mv.addObject("paging", paging.getPageHtml());
		mv.setViewName("/back/event/list");

		return mv;
	}

	@RequestMapping("/admin/event/detail")
	public ModelAndView event_detail(ModelAndView mv, @RequestParam("eno") int eno) {
		EventDTO edto = eventMapper.getOne(eno);
		mv.addObject("edto", edto);
		mv.addObject("fdto", fileMapper.getOne("where fno=#{fno}", Integer.toString(edto.getFno_main())));
		mv.setViewName("/back/event/detail");
		return mv;
	}

	@RequestMapping("/admin/event/mod")
	public ModelAndView recipe_mod(ModelAndView mv, @RequestParam("eno") int eno) {
		EventDTO edto = eventMapper.getOne(eno);
		mv.addObject("edto", edto);
		mv.addObject("fdto", fileMapper.getOne("where fno=#{fno}", Integer.toString(edto.getFno_main())));
		mv.addObject("edit", "edit");
		mv.addObject("url", "/admin/event/add");
		mv.setViewName("/back/event/mod");
		// System.out.println(edto.getFno_main());
		return mv;
	}

	@RequestMapping("/admin/event/mod/ok")
	@Transactional(timeout = 10)
	public String event_modOk(@RequestParam("files") MultipartFile[] files, EventDTO edto) {
		FileDTO fdto = null;
		ArrayList<String> flist = null;
		int ctno = 0;
		System.out.println(files[0].toString());
		System.out.println(files.length);
		System.out.println(edto.getFno_main());
		// ????????? ????????? ????????? fileDTO ?????? ?????? loc??????
		if (files.length > 0) {
			flist = new ArrayList<String>();
			fdto = new FileDTO();
			file.setLocation(file.getLoc().get("event"));
			fdto.setLoc(file.getRealLoc("event"));
			ctno = categoryMapper.getTypeCtno("?????????", 0, "f");

			for (MultipartFile f : files) {
				// ????????? ???????????? ????????? ?????? files??? insert
				if (f.getOriginalFilename() != "") {
					int fno = fileMapper.getSeq();
					fdto.setFno(fno);
					fdto.setName(f.getOriginalFilename());
					fdto.setReal_name(f.getOriginalFilename());
					fdto.setCtno(ctno);
					flist.add(Integer.toString(fno));
					fileMapper.add(fdto);
				}
			}
		}
		System.out.println(fdto);
		// ?????? ?????????
		file.fileUpload(files);

		// ????????? ????????? ???????????? ?????????????????????, ??????????????? ?????? ????????????
		if (fdto.getFno() != 0)
			edto.setFno_main(fdto.getFno());

		eventMapper.mod(edto, "where eno=#{eno}", edto.getEno());

		return "redirect:/admin/event/detail?eno=" + edto.getEno();
	}

	@RequestMapping("/admin/event/add")
	public ModelAndView add(ModelAndView mv) {
		mv.addObject("edit", "edit");
		mv.addObject("url", "/admin/event/add");
		mv.setViewName("/back/event/add");
		return mv;
	}

	@RequestMapping("/admin/event/add/ok")
	@Transactional(timeout = 10)
	public String event_addOk(@RequestParam("files") MultipartFile[] files, EventDTO edto) {
		FileDTO fdto = null;
		ArrayList<String> flist = null;
		int ctno = 0;
		System.out.println(files.length);
		// ????????? ????????? ????????? fileDTO ?????? ?????? loc??????
		if (files.length > 0) {
			flist = new ArrayList<String>();
			fdto = new FileDTO();
			file.setLocation(file.getLoc().get("event"));
			fdto.setLoc(file.getRealLoc("event"));
			ctno = categoryMapper.getTypeCtno("?????????", 0, "f");
		}

		for (MultipartFile f : files) {
			// ????????? ???????????? ????????? ?????? files??? insert
			if (f.getOriginalFilename() != "") {
				int fno = fileMapper.getSeq();
				fdto.setFno(fno);
				fdto.setName(f.getOriginalFilename());
				fdto.setReal_name(f.getOriginalFilename());
				fdto.setCtno(ctno);
				flist.add(Integer.toString(fno));
				fileMapper.add(fdto);
			}
		}

		// ?????? ?????????
		file.fileUpload(files);

		// insert??? ???????????????fno productDTO??? ??????
		edto.setFno_main(fdto.getFno());

		eventMapper.insert(edto);

		return "redirect:/admin/event";
	}

	@RequestMapping("admin/event/delete")
	public String event_del(@RequestParam("eno") int eno) {
		eventMapper.del(eno);

		return "redirect:../";
	}

}