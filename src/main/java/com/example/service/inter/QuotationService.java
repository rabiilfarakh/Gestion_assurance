package com.example.service.inter;

import com.example.entity.Quotation;

import java.util.List;
import java.util.UUID;

public interface QuotationService {
    Quotation create(Quotation quotation);
    Quotation findBYId(UUID id);
    List<Quotation> findAll();
    void delete(UUID id);
}
