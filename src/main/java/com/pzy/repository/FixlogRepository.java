package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Fixlog;
import com.pzy.entity.osworkflow.Wfentry;
public interface FixlogRepository extends PagingAndSortingRepository<Fixlog, Long>,JpaSpecificationExecutor<Fixlog>{
	 public Fixlog findByWfentry(Wfentry wfentry);
}

