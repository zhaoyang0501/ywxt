package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Runlog;
public interface RunlogRepository extends PagingAndSortingRepository<Runlog, Long>,JpaSpecificationExecutor<Runlog>{
    
}

