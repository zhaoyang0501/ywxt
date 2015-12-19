package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Category;
import com.pzy.entity.Item;
public interface ItemRepository extends PagingAndSortingRepository<Item, Long>,JpaSpecificationExecutor<Item>{
	public List<Item> findByCategory(Category category);
	@Query(value=" select count(1) from t_item t1  WHERE t1.worker=?1 AND t1.state='维修工处理中' ", nativeQuery=true)
	public Integer findByWorker(Long id);
}

