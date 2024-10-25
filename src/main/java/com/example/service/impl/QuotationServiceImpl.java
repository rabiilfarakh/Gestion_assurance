package com.example.service.impl;

import com.example.entity.Quotation;
import com.example.repository.QuotationRepository;
import com.example.service.inter.QuotationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class QuotationServiceImpl implements QuotationService {

    @Autowired
    private QuotationRepository quotationRepository;

    @Override
    public Quotation create(Quotation quotation) {
        return quotationRepository.save(quotation);
    }

    @Override
    public Quotation findBYId(UUID id) {
        return quotationRepository.findById(id).orElse(null);
    }

    @Override
    public List<Quotation> findAll() {
        return quotationRepository.findAll();
    }

    @Override
    public void delete(UUID id) {
        quotationRepository.deleteById(id);
    }
}
