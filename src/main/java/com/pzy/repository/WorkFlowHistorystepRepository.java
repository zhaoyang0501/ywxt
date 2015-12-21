package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.osworkflow.HistoryStep;
import com.pzy.entity.osworkflow.Wfentry;
public interface WorkFlowHistorystepRepository extends PagingAndSortingRepository<HistoryStep, Long>,JpaSpecificationExecutor<HistoryStep>{
	public List<HistoryStep> findByWfentry(Wfentry wfentry);
}
