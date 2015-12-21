package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.osworkflow.CurrentStep;
import com.pzy.entity.osworkflow.Wfentry;
public interface WorkFlowCurrentstepRepository extends PagingAndSortingRepository<CurrentStep, Long>,JpaSpecificationExecutor<CurrentStep>{
	public List<CurrentStep> findByWfentry(Wfentry wfentry);
}
