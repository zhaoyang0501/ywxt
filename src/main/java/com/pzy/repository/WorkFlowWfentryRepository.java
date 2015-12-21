package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.osworkflow.Wfentry;
public interface WorkFlowWfentryRepository extends PagingAndSortingRepository<Wfentry, Long>,JpaSpecificationExecutor<Wfentry>{
}
