package com.example.controller;

import com.example.entity.Quotation;
import com.example.entity.User;
import com.example.enumeration.InsuranceType;
import com.example.enumeration.Status;
import com.example.service.inter.QuotationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/quotations")
public class QuotationController {

    @Autowired
    private QuotationService quotationService;

    @GetMapping("/admin")
    public String listQuotations(Model model) {
        List<Quotation> quotations = quotationService.findAll();
        model.addAttribute("quotations", quotations);
        return "admin";
    }

    @GetMapping
    public String showQuotationForm(@RequestParam String insuranceType, Model model) {
        List<Quotation> quotations = quotationService.findAll();
        model.addAttribute("insuranceType", insuranceType);
        return "quotation";
    }


    @PostMapping("/addQuotation")
    public String createQuotation(@ModelAttribute Quotation quotation, HttpSession session, Model model) {

        User user = (User) session.getAttribute("user");
        if (user == null) {
            model.addAttribute("error", "Vous devez être connecté pour créer une quotation.");
            return "login";
        }

        quotation.setUser(user);

        quotationService.create(quotation);
        return "redirect:/index";
    }


    @GetMapping("/{id}")
    public String getQuotation(@PathVariable UUID id, Model model) {
        Quotation quotation = quotationService.findBYId(id);
        model.addAttribute("quotation", quotation);
        return "quotationDetails";
    }

    @DeleteMapping("/{id}")
    public String deleteQuotation(@PathVariable UUID id) {
        quotationService.delete(id);
        return "redirect:/quotations";
    }
}
