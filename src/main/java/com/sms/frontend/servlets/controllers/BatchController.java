package com.sms.frontend.servlets.controllers;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tmf.inventory.SpringHibernateIntegrationBackend.models.Batch;
import com.tmf.inventory.SpringHibernateIntegrationBackend.services.BatchService;

@Controller
public class BatchController {
	@Autowired
	private BatchService service;
	
	@RequestMapping("/")
	public String home() {
		System.out.println("Batch controller called");
		return "index";
	}
	/*
	@RequestMapping("/allBatches")
	public ModelAndView getAllBatches() {
		ModelAndView model = new ModelAndView();
		List<Batch> availableBatches = service.displayAllBatches();
		
		model.addObject("allBatches", availableBatches);
		model.setViewName("AllBatches");
		
		return model;
	}
	*/
	@RequestMapping("/allBatches")
	public String getAllBatches(Model model) {
		List<Batch> availableBatches = service.displayAllBatches();
		model.addAttribute("allBatches", availableBatches);
		return "AllBatches";
	}
	
	@RequestMapping("/displayBatch/{id}")
	public String displayBatch(@PathVariable("id")int id,Model model) {
		Batch batch = service.displayBatchById(id);
		model.addAttribute("batch",batch);
		return "EditBatch";
	}
	
	@RequestMapping("addBatch")
	public String addBatch(Model model) {
		Batch batch = new Batch();
		model.addAttribute("batch",batch);
		return "AddBatch";
	}
	
	@RequestMapping("saveBatch")
	public String saveBatch(@RequestParam("cid")int cid,
			@RequestParam("sd")Date sd,@RequestParam("ed")Date ed) {
		Batch batch = new Batch();
		batch.setCourseId(cid);
		batch.setStartDate(sd);
		batch.setEndDate(ed);
		service.addNewBatch(batch);
		return "redirect:/allBatches";
	}
	
}
