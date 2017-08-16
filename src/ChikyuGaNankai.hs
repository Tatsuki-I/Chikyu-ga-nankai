module ChikyuGaNankai where

import Data.Time.Clock
import Data.Time.Clock.POSIX
import Data.Time.Calendar

chikyuGaNankai :: UTCTime -> Integer
chikyuGaNankai =  (`div` 86400) . truncate . utcTimeToPOSIXSeconds

nengappi :: (Integer, Int, Int) -> String
nengappi (y, m, d) =  show y ++ "年"
                      ++ show m ++ "月"
                      ++ show d ++ "日"
