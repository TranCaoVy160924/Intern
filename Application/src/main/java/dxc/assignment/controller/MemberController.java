package dxc.assignment.controller;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.postgresql.util.PSQLException;
import org.postgresql.util.ServerErrorMessage;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import dxc.assignment.mapper.MemberMapper;
import dxc.assignment.model.Member;
import dxc.assignment.model.error.ApiError;
import dxc.assignment.model.response.MemberSelectResponse;

@RestController
@RequestMapping(value = "/members", produces = MediaType.APPLICATION_JSON_VALUE)
public class MemberController {
	private final MemberMapper memberMapper;

	public MemberController(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	@GetMapping
	public ResponseEntity<Object> select(@RequestParam String searchString,
			@RequestParam int currentPage, @RequestParam int pageSize) {
		// Get members for specified page and search string
		List<Member> members = memberMapper.select(searchString,
				new RowBounds(pageSize * (currentPage - 1), pageSize));
		// Get total count for search string
		int totalCount = memberMapper.countMembers(searchString);
		return new ResponseEntity<Object>(
				new MemberSelectResponse(members, totalCount), HttpStatus.OK);
	}

	@GetMapping("id/{id}")
	public ResponseEntity<Object> selectById(@PathVariable("id") int id) {
		Member member = memberMapper.selectById(id);
		// Return error code if not found so client dont have to check for null
		if (member != null) {
			// Member is not nullable
			return new ResponseEntity<Object>(member, HttpStatus.OK);
		} else {
			return new ResponseEntity<Object>(HttpStatus.NOT_FOUND);
		}
	}

	@GetMapping("email/{email}")
	public ResponseEntity<Object> selectById(@PathVariable("email") String email) {
		Member member = memberMapper.selectByEmail(email);
		// Return error code if not found so client dont have to check for null
		if (member != null) {
			// Member is not nullable
			return new ResponseEntity<Object>(member, HttpStatus.OK);
		} else {
			return new ResponseEntity<Object>(HttpStatus.NOT_FOUND);
		}
	}

	@PostMapping
	public ResponseEntity<Object> insert(@RequestBody Member member) {
		try {
			// Insert the new member into the database
			memberMapper.insert(member);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			// Catch error from database and add the error to the error response
			PSQLException sqlEx = (PSQLException) e.getCause();
			ApiError error = new ApiError(sqlEx.getMessage(), HttpStatus.BAD_REQUEST);
			return new ResponseEntity<Object>(sqlEx.getServerErrorMessage(), HttpStatus.BAD_REQUEST);
		}
	}

	@PutMapping
	public ResponseEntity<Object> update(@RequestBody Member member) {
		try {
			// Update the new member into the database
			memberMapper.update(member);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			// Catch error from database and add the error to the error response
			PSQLException sqlEx = (PSQLException) e.getCause();
			ApiError error = new ApiError(sqlEx.getMessage(), HttpStatus.BAD_REQUEST);
			return new ResponseEntity<>(error, error.getStatus());
		}
	}

	@DeleteMapping("{id}")
	public ResponseEntity<Object> delete(@PathVariable("id") int id) {
		try {
			// Find if member is exist
			Member member = memberMapper.selectById(id);
			// Return error code on member not found
			if (member == null) {
				return new ResponseEntity<Object>(HttpStatus.NOT_FOUND);
			}
			
			memberMapper.delete(id);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			// Catch error from database and add the error to the error response
			PSQLException sqlEx = (PSQLException) e.getCause();
			ApiError error = new ApiError(sqlEx.getMessage(), HttpStatus.BAD_REQUEST);
			return new ResponseEntity<>(error, error.getStatus());
		}
	}
}
