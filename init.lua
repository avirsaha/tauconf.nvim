-- Extend package.path to include the 'lua/' directory and subdirectories.  -- This allows require("custom") and require("tauconf") to find the module(s) inside 'lua' directory.
package.path = package.path .. ";./lua/?.lua;./lua/?/init.lua"

-- Importing module(s) from 'lua/' directory.
require("tauconf")
-- require("custom") -- Uncomment if required.
print("hello")
