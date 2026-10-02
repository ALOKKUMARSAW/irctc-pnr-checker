package com.irctc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PNRController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/pnrCheck")
    public String checkPNRStatus(@RequestParam("pnrNumber") String pnrNo,
                                 Model model) {

        System.out.println("PNR : " + pnrNo);

        model.addAttribute("pnrNumber", pnrNo);

        return "pnr-status";
    }

    @GetMapping("/bookingStatus")
    public String bookingStatus(@RequestParam("pnrNumber") String pnrNo,
                                Model model) {

        System.out.println("PNR : " + pnrNo);

        model.addAttribute("pnrNumber", pnrNo);

        return "booking-status";
    }
}