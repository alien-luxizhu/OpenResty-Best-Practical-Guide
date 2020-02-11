if ngx then
	return ngx
end

ngx = {
	null = nil,
	-- (number) = 206
	HTTP_PARTIAL_CONTENT = 206,
	-- (number) = 507
	HTTP_INSUFFICIENT_STORAGE = 507,
	-- (number) = 500
	HTTP_INTERNAL_SERVER_ERROR = 500,
	-- (number) = 501
	HTTP_METHOD_NOT_IMPLEMENTED = 501,
	-- (number) = -1
	ERROR = -1,
	-- (number) = 256
	HTTP_MOVE = 256,
	-- (number) = 301
	HTTP_MOVED_PERMANENTLY = 301,
	-- (number) = 408
	HTTP_REQUEST_TIMEOUT = 408,
	-- (number) = 409
	HTTP_CONFLICT = 409,
	-- (number) = 16384
	HTTP_PATCH = 16384,
	-- (number) = 64
	HTTP_MKCOL = 64,
	-- (number) = 3
	CRIT = 3,
	-- (number) = 307
	HTTP_TEMPORARY_REDIRECT = 307,
	-- (number) = 5
	WARN = 5,
	-- (number) = 4
	ERR = 4,
	-- (number) = 0
	STDERR = 0,
	-- (number) = 406
	HTTP_NOT_ACCEPTABLE = 406,
	-- (number) = 202
	HTTP_ACCEPTED = 202,
	-- (number) = 6
	NOTICE = 6,
	-- (number) = 101
	HTTP_SWITCHING_PROTOCOLS = 101,
	-- (number) = 4
	HTTP_HEAD = 4,
	-- (number) = 8
	DEBUG = 8,
	-- (number) = 302
	HTTP_MOVED_TEMPORARILY = 302,
	-- (number) = 128
	HTTP_COPY = 128,
	-- (number) = 404
	HTTP_NOT_FOUND = 404,
	-- (number) = 304
	HTTP_NOT_MODIFIED = 304,
	-- (number) = 505
	HTTP_VERSION_NOT_SUPPORTED = 505,
	-- (number) = 512
	HTTP_OPTIONS = 512,
	-- (number) = -5
	DECLINED = -5,
	-- (number) = -2
	AGAIN = -2,
	-- (number) = 32
	HTTP_DELETE = 32,
	-- (number) = 32768
	HTTP_TRACE = 32768,
	-- (number) = 100
	HTTP_CONTINUE = 100,
	-- (number) = 444
	HTTP_CLOSE = 444,
	-- (number) = 400
	HTTP_BAD_REQUEST = 400,
	-- (number) = 403
	HTTP_FORBIDDEN = 403,
	-- (number) = 7
	INFO = 7,
	-- (number) = 8192
	HTTP_UNLOCK = 8192,
	-- (number) = 300
	HTTP_SPECIAL_RESPONSE = 300,
	-- (number) = 204
	HTTP_NO_CONTENT = 204,
	-- (number) = 4096
	HTTP_LOCK = 4096,
	-- (number) = 0
	OK = 0,
	-- (number) = -4
	DONE = -4,
	-- (number) = 200
	HTTP_OK = 200,
	-- (number) = 1
	EMERG = 1,
	-- (number) = 504
	HTTP_GATEWAY_TIMEOUT = 504,
	-- (number) = 502
	HTTP_BAD_GATEWAY = 502,
	-- (number) = 503
	HTTP_SERVICE_UNAVAILABLE = 503,
	-- (number) = 451
	HTTP_ILLEGAL = 451,
	-- (number) = 426
	HTTP_UPGRADE_REQUIRED = 426,
	-- (number) = 410
	HTTP_GONE = 410,
	-- (number) = 2048
	HTTP_PROPPATCH = 2048,
	-- (number) = 201
	HTTP_CREATED = 201,
	-- (number) = 8
	HTTP_POST = 8,
	-- (number) = 405
	HTTP_NOT_ALLOWED = 405,
	-- (number) = 429
	HTTP_TOO_MANY_REQUESTS = 429,
	-- (number) = 303
	HTTP_SEE_OTHER = 303,
	-- (number) = 402
	HTTP_PAYMENT_REQUIRED = 402,
	-- (number) = 401
	HTTP_UNAUTHORIZED = 401,
	-- (number) = 1024
	HTTP_PROPFIND = 1024,
	-- (number) = 2
	ALERT = 2,
	-- (number) = 2
	HTTP_GET = 2,
	-- (number) = 16
	HTTP_PUT = 16,
	get_now_ts = function()
	end,
	time = function()
		return os.time()
	end,
	print = function(...)
		print(...)
	end,
	cookie_time = function()
	end,
	config = {
		-- ngx_lua_version(number) = 10001
		ngx_lua_version = 10001,
		-- nginx_version(number) = 1009007
		nginx_version = 1009007,
		-- debug(boolean) = false
		debug = false,
		nginx_configure = function()
		end,
		prefix = function()
		end,
		-- subsystem(string) = http
		subsystem = http,
	},
	get_now = function()
		return os.date("%Y-%m-%d %X", os.time())
	end,
	exit = function()
	end,
	now = function()
		return os.time() + os.clock()
	end,
	crc32_long = function()
	end,
	eof = function()
	end,
	thread = {
		spawn = function(func, arg1, arg2, ...)
		end,
		wait = function(thread1, thread2, ...)
		end,
		kill = function(thread)
		end,
	},
	decode_args = function()
	end,
	update_time = function()
	end,
	log = function(level, ...)
		print(...)
	end,
	socket = {
		tcp = function()
		end,
		connect = function()
		end,
		udp = function()
		end,
		stream = function()
		end,
	},
	var = {
		arg_name = ' ', -- argument name in the request line
		args = ' ', -- arguments in the request line
		binary_remote_addr = ' ', -- client address in a binary form, value’s length is always 4 bytes
		body_bytes_sent = 23432, -- number of bytes sent to a client, not counting the response header; this variable is compatible with the “%B” parameter of the mod_log_config Apache module
		bytes_sent = 1024, -- number of bytes sent to a client (1.3.8, 1.2.5)
		connection = 11252, -- connection serial number (1.3.8, 1.2.5)
		connection_requests = ' ', -- current number of requests made through a connection (1.3.8, 1.2.5)
		content_length = ' ', -- “Content-Length” request header field
		content_type = 'html/text', -- “Content-Type” request header field
		cookie_name = ' ', -- the name cookie
		document_root = ' ', -- root or alias directive’s value for the current request
		document_uri = ' ', -- same as $uri
		host = 'localhost.mock', -- in this order of precedence: host name from the request line, or host name from the “Host” request header field, or the server name matching a request
		hostname = ' ', -- host name
		http_name = ' ', -- arbitrary request header field; the last part of a variable name is the field name converted to lower case with dashes replaced by underscores
		https = "on", -- if connection operates in SSL mode, or an empty string otherwise
		is_args = " ", -- “?” if a request line has arguments, or an empty string otherwise
		limit_rate = " ", -- setting this variable enables response rate limiting; see limit_rate
		msec = 123, -- current time in seconds with the milliseconds resolution (1.3.9, 1.2.6)
		nginx_version = "1.9.7.1", --nginx version
		pid = '8874', -- PID of the worker process
		pipe = ' ', -- “p” if request was pipelined, “.” otherwise (1.3.12, 1.2.7)
		proxy_protocol_addr = ' ', -- client address from the PROXY protocol header, or an empty string otherwise (1.5.12) The PROXY protocol must be previously enabled by setting the proxy_protocol parameter in the listen directive.
		query_string = ' ', -- same as $args
		realpath_root = ' ', -- an absolute pathname corresponding to the root or alias directive’s value for the current request, with all symbolic links resolved to real paths
		remote_addr = ' ', -- client address
		remote_port = ' ', -- client port
		remote_user = ' ', -- user name supplied with the Basic authentication
		request = ' ', -- full original request line
		request_body = ' ', -- request body The variable’s value is made available in locations processed by the proxy_pass, fastcgi_pass, uwsgi_pass, and scgi_pass directives.
		request_body_file = ' ', -- name of a temporary file with the request body At the end of processing, the file needs to be removed. To always write the request body to a file, client_body_in_file_only needs to be enabled. When the name of a temporary file is passed in a proxied request or in a request to a FastCGI/uwsgi/SCGI server, passing the request body should be disabled by the proxy_pass_request_body off, fastcgi_pass_request_body off, uwsgi_pass_request_body off, or scgi_pass_request_body off directives, respectively.
		request_completion = ' ', -- “OK” if a request has completed, or an empty string otherwise
		request_filename = ' ', -- file path for the current request, based on the root or alias directives, and the request URI
		request_length = ' ', -- request length (including request line, header, and request body) (1.3.12, 1.2.7)
		request_method = ' ', -- request method, usually “GET” or “POST”
		request_time = ' ', -- request processing time in seconds with a milliseconds resolution (1.3.9, 1.2.6); time elapsed since the first bytes were read from the client
		request_uri = ' ', -- full original request URI (with arguments)
		scheme = ' ', -- request scheme, “http” or “https”
		sent_http_name = ' ', -- arbitrary response header field; the last part of a variable name is the field name converted to lower case with dashes replaced by underscores
		server_addr = ' ', -- an address of the server which accepted a request Computing a value of this variable usually requires one system call. To avoid a system call, the listen directives must specify addresses and use the bind parameter.
		server_name = ' ', -- name of the server which accepted a request
		server_port = ' ', -- port of the server which accepted a request
		server_protocol = ' ', -- request protocol, usually “HTTP/1.0”, “HTTP/1.1”, or “HTTP/2.0”
		status = ' ', -- response status (1.3.2, 1.2.2)
		time_iso8601 = ' ', -- local time in the ISO 8601 standard format (1.3.12, 1.2.7)
		time_local = ' ', -- local time in the Common Log Format (1.3.12, 1.2.7)
		uri = '/test/path? ' -- current URI in request, normalized The value of $uri may change during request processing, e.g. when doing internal redirects, or when using index files.
	},
	resp = {
		get_headers = function()
			return {}
		end,
	},
	hmac_sha1 = function(secret_key, str)
	end,
	md5 = function(str)
	end,
	re = {
		---@type fun(subject:string, regex:string, options_nullable:string, ctx_nullable:table, indexToRun_nullable:number) @Similar to ngx.re.match but only returns the beginning index (from) and end index (to) of the matched substring. The returned indexes are 1-based and can be fed directly into the string.sub API function to obtain the matched substring.
		find = string.find,
		---@type fun(subject:string, regex:string, options_nullable:string, ctx_nullable:table, indexToRun_nullable:number) @Substitutes the first match of the Perl compatible regular expression regex on the subject argument string with the string or function argument replace.
		sub = string.sub,
		---@type fun(subject:string, regex:string, replace:string, options_nullable:string, ctx_nullable:table, indexToRun_nullable:number) @Just like ngx.re.sub, but does global substitution.
		gsub = string.gsub,
		---@type fun(subject:string, regex:string, options_nullable:string, ctx_nullable:table, res_nullable:table)
		match = string.match,
		---@type fun(subject:string, regex:string, options_nullable:string) @Similar to ngx.re.match, but returns a Lua iterator instead, so as to let the user programmer iterate all the matches over the <subject> string argument with the PCRE regex.
		gmatch = string.gmatch,
	},
	redirect = function(url)
	end,
	sleep = function(seconds)
	end,
	location = {
		capture = function()
			return { body = 'capture body content' }
		end,
		capture_multi = function()
			return { { body = 'body1' }, { body = 'body2' } }
		end
	},
	on_abort = function()
	end,
	timer = {
		running_count = function()
		end,
		pending_count = function()
		end,
		at = function()
		end,
		every = function()

		end
	},
	throw_error = function()
	end,
	send_headers = function()
	end,
	get_phase = function()
	end,
	header = {
	},
	crc32_short = function()
	end,
	sha1_bin = function()
	end,
	md5_bin = function()
	end,
	encode_base64 = function()
	end,
	decode_base64 = function()
	end,
	flush = function()
	end,
	encode_args = function()
	end,
	arg = {
	},
	unescape_uri = function()
	end,
	_phase_ctx = function()
	end,
	escape_uri = function()
	end,
	parse_http_time = function()
	end,
	worker = {
		id = function()
		end,
		count = function()
		end,
		exiting = function()
		end,
		pid = function()
			return 3234
		end,
	},
	http_time = function()
		return os.time()
	end,
	get_today = function()
	end,
	localtime = function()
	end,
	utctime = function()
	end,
	quote_sql_str = function()
	end,
	today = function()
	end,
	say = function(...)
		print(...)
	end,
	exec = function()
	end,
	---@type table<string, ngx.shared.DICT>
	shared = {}
}
---@type ngx.req
ngx.req = {}

---@type ngx.timer
ngx.timer = {}
---@class ngx.timer
---@field running_count number @the number of timers currently running.
---@field pending_count number @the number of pending timers.
local _timer = {}
---at
---@param delay number @fractional seconds like 0.001 to mean 1 millisecond
---@param callback fun(is_premature:boolean, user_arg1, user_arg2) @ can be any Lua function, which will be invoked later in a background "light thread" after the delay specified.
---@param user_arg1 table|string|number
---@param user_arg2 table|string|number
function _timer.at(delay, callback, user_arg1, user_arg2, ...) end
---every timer will be created every delay seconds until the current Nginx worker process starts exiting.
---@param delay number @fractional seconds like 0.001 to mean 1 millisecond, cannot be zero,
---@param callback fun(is_premature:boolean, user_arg1, user_arg2) @ can be any Lua function, which will be invoked later in a background "light thread" after the delay specified.
---@param user_arg1 table|string|number
---@param user_arg2 table|string|number
function _timer.every(delay, callback, user_arg1, user_arg2, ...) end


---@class ngx.req
local _req = {}
---set_header
---@param header_name string
---@param header_value string
function _req.set_header(header_name, header_value) end			-- =[C] @line: -1
---@return boolean @type
function _req.is_internal() end			-- =[C] @line: -1
---set_uri
---@param uri string Rewrite the current request's (parsed) URI by the uri argument. The uri argument must be a Lua string and cannot be of zero length, or a Lua exception will be thrown.
---@param jump boolean @ The optional boolean jump argument can trigger location rematch (or location jump)
function _req.set_uri(uri, jump) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.append_body(arg) end			-- =[C] @line: -1

---@return string @type
function _req.raw_header() end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.set_body_file(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.get_uri_args(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.set_body_data(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.clear_header(arg) end			-- =[C] @line: -1

---@param arg string
function _req.start_time() end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.read_body(arg) end			-- =[C] @line: -1

---@return string @type
function _req.get_method() end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.socket(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.set_uri_args(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.discard_body(arg) end			-- =[C] @line: -1

---@return table @type
function _req.get_headers() end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.get_body_file(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.init_body(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.get_body_data(arg) end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.get_post_args(arg) end			-- =[C] @line: -1

---@return string @type
function _req.http_version() end			-- =[C] @line: -1

---@param arg string
---@return string @type
function _req.get_query_args(arg) end			-- =[C] @line: -1


---set_method
---@param method_id number @ ngx.HTTP_POST and ngx.HTTP_GET
function _req.set_method(method_id) end			-- =[C] @line: -1

---Completes the construction process of the new request body created by the ngx.req.init_body and ngx.req.append_body calls.
---@return string @type
function _req.finish_body(arg) end			-- =[C] @line: -1


---@class ngx.shared.DICT
local _ndic = {}
---@param key string
---@return string
function _ndic:get(key) return end

---@param key string
---@return string
function _ndic:get_stale(key) return end


---set
---@param key string
---@param value string
---@param exptime_seconds number @ second
---@param flags number @flags argument specifies a user flags value associated with the entry to be stored. It can also be retrieved later with the value.
function _ndic:set(key, value, exptime_seconds, flags)
	return
end

---@param key string
---@return string
function _ndic:safe_set(key, value, exptime, flags) return end

---@param key string
---@return string
function _ndic:add(key, value, exptime, flags) return end

---@param key string
---@return string
function _ndic:safe_add(key, value, exptime, flags) return end

---@param key string
---@return string
function _ndic:replace(key, value, exptime, flags) return end

---@param key string
---@return string
function _ndic:delete(key) return end

---@param key string
---@param value number
---@param init number @ initialize number
---@return number
function _ndic:incr(key, value, init) return end

---@param key string
---@return string
function _ndic:lpush(key, value) return end

---@param key string
---@return string
function _ndic:rpush(key, value) return end

---@param key string
---@return string
function _ndic:lpop(key) return end

---@param key string
---@return string
function _ndic:rpop(key) return end

---@param key string
---@return string
function _ndic:llen(key) return end

---@param key string
function _ndic:flush_all() return end

---@param max_count number
---@return number @flushed item number
function _ndic:flush_expired(max_count) return end

---@param max_count number
---@return string[]
function _ndic:get_keys(max_count) return end


---@class ngx.re
local _nre = {}
function _nre.find(subject, regex, options, ctx, res_table)
end
function _nre.sub()
end
function _nre.gsub(str)
	return str
end
function _nre.gmatch()
end
function _nre.match()
end

ngx.re.find()
-- Any name could be called
local mt_mock_method = {
	__index = function()
		return function()
			return nil
			--return 'mock called'
		end
	end
}

-- Any property could be called
local mt_mock_cache = {
	__index = function()
		local new_obj = {}
		setmetatable(new_obj, mt_mock_method)
		return new_obj
	end
}
setmetatable(ngx.shared, mt_mock_cache)

ngx.shared.appconf = _ndic


---@class json
local json = {}
---@param arg string
---@return table @type
function json:decode(arg) end			-- =[C] @line: -1

---@param arg table
---@return string @type
function json:encode(arg) end			-- =[C] @line: -1

dofile(ngx.config.prefix()..'init_dev.lua')
return ngx
