package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Bug;
import com.pzy.entity.osworkflow.Wfentry;
public interface BugRepository extends PagingAndSortingRepository<Bug, Long>,JpaSpecificationExecutor<Bug>{
	public Bug findByWfentry(Wfentry wfentry);
}

