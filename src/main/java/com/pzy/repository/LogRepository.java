package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Log;
public interface LogRepository extends PagingAndSortingRepository<Log, Long>,JpaSpecificationExecutor<Log>{
    
}

