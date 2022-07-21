package com.ssafy.db.specification;

import org.springframework.data.jpa.domain.Specification;

import com.ssafy.db.entity.Article;
import com.ssafy.db.entity.StudyArticle;

public class StudyArticleSpecification {
	
	public static Specification<StudyArticle> equalTitle(String title){
		return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get("title"), title);
	}

}