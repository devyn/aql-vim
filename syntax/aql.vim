" Vim syntax file
" Language:     Arango AQL.
" Last Changed: Thu Jul 27 02:00 PM 2014 EST

syn case ignore

" All non-contained SQL syntax.
syn cluster aqlALL          contains=TOP

" Various error conditions.
syn match   aqlError        ")"                 " Lonely closing paren.
syn match   aqlError        ",\(\_\s*[;)]\)\@=" " Comma before a paren or semicolon.

" Special words.
syn keyword aqlSpecial      false null true
syn keyword aqlSpecial      keep count options prune search to

" (case sensitive)
syn case match
syn keyword aqlSpecial      NEW OLD CURRENT
syn case ignore

" Keywords.
syn keyword aqlKeyword      aggregate all and any asc collect desc distinct
syn keyword aqlKeyword      false filter for graph in inbound insert into
syn keyword aqlKeyword      k_paths k_shortest_paths let like limit none not null
syn keyword aqlKeyword      or outbound remove replace return shortest_path
syn keyword aqlKeyword      sort true update upsert with window

" Conditionals
syn match   aqlConditional  "[!=][=~]\|>=\|<=\|<\|>"

" Operators
syn match   aqlOperator     "||\|&&\|::\|+\|-"
syn match   aqlOperator     "=[=~]\@!"

" Unknown functions.
syn match   aqlUnknownFunc  "\<\w\+(\@="

" Functions - Only valid with a '(' after them.
"    Type cast functios
syn match   aqlFunction     "\<\(to_bool\|to_number\|to_string\|to_array\|to_list\)(\@="
syn match   aqlFunction     "\<\(is_null\|is_bool\|is_number\|is_string\|is_array\|is_key\)(\@="
syn match   aqlFunction     "\<\(is_list\|is_object\|is_document\|is_datestring\|typename\)(\@="
"    String functions
syn match   aqlFunction     "\<\(char_length\|concat\|concat_separator\|contains\|count\)(\@="
syn match   aqlFunction     "\<\(crc32\|find_first\|find_last\|fnv64\|ipv4_from_number\|ipv4_to_number\)(\@="
syn match   aqlFunction     "\<\(is_ipv4\|json_parse\|json_stringify\|left\|length\|levenshtein_distance\)(\@="
syn match   aqlfunction     "\<\(like\|lower\|ltrim\|md5\)(\@="
syn match   aqlfunction     "\<\(ngram_positional_similarity\|ngram_similarity\)(\@="
syn match   aqlfunction     "\<\(random_token\|regex_matches\|regex_split\|regex_test\|regex_replace\)(\@="
syn match   aqlFunction     "\<\(reverse\|right\|rtrim\|sha1\|sha512\|soundex\|split\)(\@="
syn match   aqlFunction     "\<\(starts_with\|substitute\|substring\|tokens\)(\@="
syn match   aqlFunction     "\<\(to_base64\|to_hex\|trim\|upper\|uuid\)(\@="
"    Numeric
syn match   aqlFunction     "\<\(abs\|acos\|asin\|atan2\?\|average\|avg\|ceil\)(\@="
syn match   aqlFunction     "\<\(cos\|cosine_similarity\|decay_gauss\|decay_exp\|decay_linear\?\)(\@="
syn match   aqlFunction     "\<\(degrees\|exp2\?\|floor\|log2\?\)(\@="
syn match   aqlFunction     "\<\(log10\|l[12]_distance\|max\|median\|min\|percentile\|pi\)(\@="
syn match   aqlFunction     "\<\(pow\|product\|radians\|rand\|range\|round\|sin\)(\@="
syn match   aqlFunction     "\<\(sqrt\|stddev_population\|stddev_sample\|stddev\|sum\|tan\)(\@="
syn match   aqlFunction     "\<\(variance_population\|variance_sample\|variance\)(\@="
"    Bit
syn match   aqlFunction     "\<\(bit_and\|bit_construct\|bit_deconstruct\|bit_from_string\)(\@="
syn match   aqlFunction     "\<\(bit_negate\|bit_or\|bit_popcount\|bit_shift_left\|bit_shift_right\)(\@="
syn match   aqlFunction     "\<\(bit_test\|bit_to_string\|bit_xor\)(\@="
"    Date
syn match   aqlFunction     "\<\(date_now\|date_timestamp\|date_iso8601\|is_datestring\)(\@="
syn match   aqlFunction     "\<\(date_dayofweek\|date_year\|date_month\|date_hour\)(\@="
syn match   aqlFunction     "\<\(date_minute\|date_second\|date_millisecond\|date_dayofyear\)(\@="
syn match   aqlFunction     "\<\(date_isoweek\|date_leapyear\|date_quarter\|date_days_in_month\)(\@="
syn match   aqlFunction     "\<\(date_format\|date_add\|date_subtract\|date_diff\)(\@="
syn match   aqlFunction     "\<\(date_compare\|date_utctolocal\|date_localtoutc\|date_timezone\|date_timezones\)(\@="
"    Array
syn match   aqlFunction     "\<\(append\|count\|first\|flatten\|intersection\)(\@="
syn match   aqlFunction     "\<\(last\|length\|minus\|nth\|pop\|position\|push\)(\@="
syn match   aqlFunction     "\<\(remove_nth\|remove_value\|remove_values\|reverse\|shift\)(\@="
syn match   aqlFunction     "\<\(shift\|slice\|union\|union_distinct\|unique\|unshift\)(\@="
"    Object / Document Functions
syn match   aqlFunction     "\<\(attributes\|count\|has\|is_same_collection\|keep\|length\)(\@="
syn match   aqlFunction     "\<\(matches\|merge\|merge_recursive\|parse_identifier\|translate\|unset\)(\@="
syn match   aqlFunction     "\<\(unset_recursive\|values\|zip\)(\@="
"    Geo
syn match   aqlFunction     "\<\(near\|within\|within_rectangle\|is_in_polygon\)(\@="
syn match   aqlFunction     "\<\(distance\|geo_contains\|geo_distance\|geo_area\|geo_equals\)(\@="
syn match   aqlFunction     "\<\(geo_intersects\|geo_in_range\|geo_linestring\|geo_multilinestring\)(\@="
syn match   aqlFunction     "\<\(geo_multipoint\|geo_point\|geo_polygon\|geo_multipolygon\)(\@="
"    Fulltext Indexes
syn match   aqlFunction     "\<\(fulltext\)(\@="
"    ArangoSearch
syn match   aqlFunction     "\<\(analyzer\|boost\|exists\|in_range\|min_match\|ngram_match\|phrase\)(\@="
syn match   aqlFunction     "\<\(starts_with\|levenshtein_match\|like\|bm25\|tfidf\)(\@="
"    Misc
syn match   aqlFunction     "\<\(not_null\|first_list\|first_document\|collection_count\|collections\)(\@="
syn match   aqlFunction     "\<\(check_document\|count\|current_user\|decode_rev\|shard_id\|document\)(\@="
syn match   aqlFunction     "\<\(length\|hash\|apply\|call\|assert\|warn\|in_range\)(\@="
syn match   aqlFunction     "\<\(pregel_result\|fail\|noopt\|noeval\|passthru\)(\@="
syn match   aqlFunction     "\<\(schema_get\|schema_validate\|sleep\|v8\|version\)(\@="

" Strings
syn region aqlString        start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region aqlString        start=+'+  skip=+\\\\\|\\'+  end=+'+
syn region aqlString        start=+`+  skip=+\\\\\|\\`+  end=+`+

" Numbers
syn match aqlNumber         "-\=\<[0-9]*\>"
syn match aqlNumber         "-\=\<[0-9]*\.[0-9]*\>"
syn match aqlNumber         "-\=\<[0-9][0-9]*e[+-]\=[0-9]*\>"
syn match aqlNumber         "-\=\<[0-9]*\.[0-9]*e[+-]\=[0-9]*\>"
syn match aqlNumber         "\<0x[abcdef0-9]*\>"

" Todo
syn keyword aqlTodo         contained DEBUG FIXME NOTE TODO XXX

" Comments
syn match  aqlComment       "//.*"
syn region aqlComment       start="/\*" end="\*/"

" Mark correct paren use. Different colors for different purposes.
syn region  aqlParens       transparent matchgroup=aqlParen start="(" end=")"
syn match   aqlParenEmpty   "()"
syn region  aqlParens       transparent matchgroup=aqlParenFunc start="\(\<\w\+\>\)\@<=(" end=")"

" Stolen from sh.vim.
if !exists("sh_minlines")
  let sh_minlines = 200
endif
if !exists("sh_maxlines")
  let sh_maxlines = 2 * sh_minlines
endif
exec "syn sync minlines=" . sh_minlines . " maxlines=" . sh_maxlines

" Define the default highlighting.
if version >= 508 || !exists("did_aql_syn_inits")
    if version < 508
        let did_aql_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink aqlComment       Comment
    HiLink aqlError         Error
    HiLink aqlFunction      Function
    HiLink aqlUnknownFunc   Exception
    HiLink aqlKeyword       Special
    HiLink aqlConditional   Conditional
    HiLink aqlNumber        Number
    HiLink aqlOperator      Operator
    HiLink aqlParen         Comment
    HiLink aqlParenEmpty    Operator
    HiLink aqlParenFunc     Function
    HiLink aqlSpecial       Keyword
    HiLink aqlString        String
    HiLink aqlTodo          Todo
    HiLink aqlType          Type

    delcommand HiLink
endif

let b:current_syntax = "aql"
