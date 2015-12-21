package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.osworkflow.Approval;
public interface WorkFlowApprovalRepository extends PagingAndSortingRepository<Approval, Long>,JpaSpecificationExecutor<Approval>{
}
