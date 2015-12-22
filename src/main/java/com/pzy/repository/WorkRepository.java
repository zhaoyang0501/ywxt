package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Work;
import com.pzy.entity.osworkflow.Wfentry;
public interface WorkRepository extends PagingAndSortingRepository<Work, Long>,JpaSpecificationExecutor<Work>{
	public Work findByWfentry(Wfentry wfentry);
}

