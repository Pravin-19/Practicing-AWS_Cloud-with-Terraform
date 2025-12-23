>

> upper("pravin-Kavin0$iip")
"PRAVIN-KAVIN0$IIP"
>

> lower("PRAVIN-KAVIN0$IIP")
"pravin-kavin0$iip"
>

> trim(".Pravin-",".")
"Pravin-"
> trim(".Pravin-","-")
".Pravin"
> trim(".Pravin-",".-")
"Pravin"
>

> trim(".Pravin-","P.-")
"ravin"
>

> replace(" hello world "," ", "-")
"-hello-world-"
>

> substr("PravinVelu", 1,4)
"ravi"
>

>

> max(12,2,1,3)
12
> min(23,32,21,12,0,1,-1,4)
-1
>

>

>

> "Numeric fnction")
╷
│ Error: Extra characters after expression
│
│   on <console-input> line 1:
│   (source code not available)
│
│ An expression was successfully parsed, but extra
│ characters were found after it.
╵


>

> abs(-20)
20
> abs(9)
9
> abs(9.23)
9.23
> abs(9)
9
>

> Collection FUnction^C
>

> length([1,1,2,1,2])
5
>

> length(toset[1,1,2,1,2])
╷
│ Error: Missing close bracket on index
│
│   on <console-input> line 1:
│   (source code not available)
│
│ The index operator must end with a closing bracket
│ ("]").
╵


> length(toSet[1,1,2,1,2])
╷
│ Error: Missing close bracket on index
│
│   on <console-input> line 1:
│   (source code not available)
│
│ The index operator must end with a closing bracket
│ ("]").
╵


> length(toSet([1,1,2,1,2]))
╷
│ Error: Call to unknown function
│
│   on <console-input> line 1:
│   (source code not available)
│
│ There is no function named "toSet". Did you mean
│ "toset"?
╵


> length(toset([1,1,2,1,2]))
2
>

> concat([1,1],[2,3],[4,5,4])
[
  1,
  1,
  2,
  3,
  4,
  5,
  4,
]
>

> concat(toset([1,1],[2,3],[4,5,4]))
╷
│ Error: Too many function arguments
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Function "toset" expects only 1 argument(s).
╵


> concat(toset([1,1],[2,3],[4,5,4]))^C
>

>

> concat("pravin", "velu")
╷
│ Error: Invalid function argument
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Invalid value for "seqs" parameter: all arguments
│ must be lists or tuples; got string.
╵


>

> concat(["pravin"], ["velu"])
[
  "pravin",
  "velu",
]
>

> merge({a=1},{b=2})
{
  "a" = 1
  "b" = 2
}
>


> toset([q,q,q,w,w,e,t,y])
╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵

╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵

╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵

╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵

╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵

╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵

╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵

╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵


> toset(["q","w","q","w","e"])
toset([
  "e",
  "q",
  "w",
])
>

> tonumber("23")
23
> tostring(23)
"23"
>

> date
╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵


> time
╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵


> timestamp
╷
│ Error: Invalid reference
│
│   on <console-input> line 1:
│   (source code not available)
│
│ A reference to a resource type must be followed by
│ at least one attribute access, specifying the
│ resource name.
╵


> timestamp()
"2025-12-23T06:22:08Z"
> formatdate("DD-MM-YY", timestamp())
"23-12-25"
> formatdate("DD-MM-YYYY", timestamp())
"23-12-2025"
>

>

