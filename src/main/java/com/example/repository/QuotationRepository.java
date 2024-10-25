package com.example.repository;

import com.example.entity.Quotation;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

public interface QuotationRepository extends JpaRepository<Quotation, UUID> {
}
