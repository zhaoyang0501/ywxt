package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.osworkflow.WfentryExtend;
public interface WorkFlowWfentryExtendRepository extends PagingAndSortingRepository<WfentryExtend, Long>,JpaSpecificationExecutor<WfentryExtend>{
}
