# 安装

```sh
curl -R -O  http://www.lua.org/ftp/lua-5.4.4.tar.gz

tar zxf lua-5.4.4.tar.gz && cd lua-5.4.4
make linux test && sudo make install

# 执行程序
lua test.lua
```

Lua 交互式编程模式可以通过命令 `lua -i` 或 lua 来启用

# 注释

```lua
-- 两个减号是单行注释

--[[
 多行注释
 多行注释
 --]]
```

# 变量
Lua 是动态类型语言，变量不要类型定义,只需要为变量赋值。 值可以存储在变量中，作为参数传递或结果返回
Lua 中有 8 个基本类型分别为：
+ `nil`:	这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）
+ `boolean`:	包含两个值：false和true。
+ `number`:	表示双精度类型的实浮点数
+ `string`:	字符串由一对双引号或单引号来表示
+ `function`:	由 C 或 Lua 编写的函数
+ `userdata`:	表示任意存储在变量中的C数据结构
+ `thread`:	表示执行的独立线路，用于执行协同程序
+ `table`:	即"关联数组"，数组的索引可以是数字、字符串或表类型。最简单构造表达式是`{}`，用来创建一个空表


Lua 变量有三种类型：全局变量、局部变量、表中的域。
Lua 中的变量全是全局变量，哪怕是语句块或是函数里，除非用 local 显式声明为局部变量
局部变量的作用域为从声明位置开始到所在语句块结束
变量的默认值均为 nil。

```lua
-- 可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量
x, y = y, x 

print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string

-- 对 table 的索引使用方括号 []。Lua 也提供了 . 操作
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
-- 等同于把它们删掉
tab1.key1 = nil

-- nil 作比较时应该加上双引号 
type(X)=="nil"  -->true

-- Lua 把 false 和 nil 看作是 false，其他的都为 true，数字 0 也是 true:

--  "[[]]" 来表示"一块"字符串
html = [[
<html>
</html>
]]

-- 在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字
print("2" + 6)
-- 字符串连接使用的是 ..
-- 使用 # 来计算字符串的长度，放在字符串前面
print(#"a" .. 'b') --> 1b

-- 在 Lua 里表的默认初始索引一般以 1 开始
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end

-- table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil
```

# 流程控制
Lua 编程语言 break 语句插入在循环体中，用于退出当前循环或语句，并开始脚本执行紧接着的语句
Lua 语言中的 goto 语句允许将控制流程无条件地转到被标记的语句处
```lua
while(condition)
do
   statements
end

repeat
   statements
until( condition )

for var=exp1,exp2,exp3 do  
    <执行体>  
end  
-- 泛型 for 循环通过一个迭代器函数来遍历所有值
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end 

goto Label
-- Label 的格式为
:: Label ::

if( 布尔表达式 1)
then
   --[ 在布尔表达式 1 为 true 时执行该语句块 --]
elseif( 布尔表达式 2)
then
   --[ 在布尔表达式 2 为 true 时执行该语句块 --]
else 
   --[ 如果以上布尔表达式都不为 true 则执行该语句块 --]
end
```

# 函数
Lua 函数主要有两种用途：
+ 1.完成指定的任务，这种情况下函数作为调用语句使用；
+ 2.计算并返回值，这种情况下函数作为赋值语句的表达式使用。
```lua
-- 未设置该参数默认为全局函数，如果你需要设置函数为局部函数需要使用关键字 local
optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
    function_body
    -- 可以返回多个值，每个值以逗号隔开
    return result_params_comma_separated
en

-- 函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里:
factorial2 = factorial

-- 在函数参数列表中使用三点 ... 表示函数有可变的参数
function average(...)
   result = 0
   local arg={...}
   for i,v in ipairs(arg) do
      result = result + v
   end
   -- 通过 select("#",...) 来获取可变参数的数量
   print("总共传入 " .. select("#",...) .. " 个数")
   return result/select("#",...)
end

-- 代码块
do  
    function foo(...)  
        for i = 1, select('#', ...) do  -->获取参数总数
            local arg = select(i, ...); -->读取参数，arg 对应的是右边变量列表的第一个参数
            print("arg", arg);  
        end  
    end  
    foo(1, 2, 3, 4);  
end
```

# 运算符

```lua
c = a + b
c = a - b
c = a * b
c = a / b
c = a % b
c = a^2 -- 乘幂
c = -a
c = a // b -- 整除

if (a == b) 
if (a ~= b) -- 不等于
if (a >= b)

if ( a and b or (not c))

.. -- 连接两个字符串
# -- 一元运算符，返回字符串或表的长度

-- 运算符优先级从高到低的顺序：
^
not    - (unary)
*      /       %
+      -
..
<      >      <=     >=     ~=     ==
and
or
```

# 模块与包
Lua 的模块是由变量、函数等已知元素组成的 table
Lua提供了一个名为require的函数用来加载模块
```lua
-- 定义一个名为 module 的模块
module = {}
 
-- 定义一个常量
module.constant = "这是一个常量"
 
-- 定义一个函数
function module.func1()
    io.write("这是一个公有函数！\n")
end

return module

-- 执行 require 后会返回一个由模块常量或函数组成的 table，并且还会定义一个包含该 table 的全局变量
require("<模块名>")
require "<模块名>"
-- 定义别名
local m = require("module")
```
函数 require 有它自己的文件路径加载策略，它会尝试从 Lua 文件或 C 程序库中加载模块。

require 用于搜索 Lua 文件的路径是存放在全局变量 `package.path` 中，当 Lua 启动后，会以环境变量 LUA_PATH 的值来初始这个环境变量。
如果没有找到该环境变量，则使用一个编译时定义的默认路径来初始化。

```lua
-- 文件路径以 ";" 号分隔，最后的 2 个 ";;" 表示新加的路径后面加上原来的默认路径
export LUA_PATH="~/lua/?.lua;;"

-- /usr/local/share/lua/5.4/?.lua;
-- /usr/local/share/lua/5.4/?/init.lua;
-- /usr/local/lib/lua/5.4/?.lua;
-- /usr/local/lib/lua/5.4/?/init.lua;
-- ./?.lua;
-- ./?/init.lua
print(package.path)

-- Lua在一个叫loadlib的函数内提供了所有的动态连接的功能。这个函数有两个参数:库的绝对路径和初始化函数
local path = "/usr/local/lua/lib/libluasocket.so"
-- loadlib 函数加载指定的库并且连接到 Lua，然而它并不打开库
local f = assert(loadlib(path, "luaopen_socket"))
f()  -- 真正打开库
```