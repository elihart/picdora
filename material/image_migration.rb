    class AddSongs < ActiveRecord::Migration
      def change
        counter = 0
        dup_counter = 0
        begin
          Image.create!(url: 'http://i.imgur.com/Eourq.jpg', reddit_score: 4433, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cYWveEa.jpg', reddit_score: 3791, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZZ8AU8d.jpg', reddit_score: 3784, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/SvrrX.jpg', reddit_score: 3439, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/NqsvxjT', reddit_score: 3436, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/FtVZB.jpg', reddit_score: 3309, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vWqGbB4.jpg', reddit_score: 3248, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/v1ocsMP.jpg', reddit_score: 3198, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/9p2HLt4.jpg', reddit_score: 3192, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IMs8Q.jpg', reddit_score: 3139, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Pjs8J.jpg', reddit_score: 3117, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QQmjSTH.jpg', reddit_score: 3108, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zoSxbax.jpg', reddit_score: 3074, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6dfIT0V.jpg', reddit_score: 3040, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WVPdl44.jpg', reddit_score: 3009, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RCnBUSl.jpg', reddit_score: 2976, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RY55VZr.jpg', reddit_score: 2975, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/GLqvecM.jpg', reddit_score: 2978, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4MiJX8F.jpg', reddit_score: 2961, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/BtxCDAN.jpg', reddit_score: 2959, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/xFSRQwN.jpg', reddit_score: 2938, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/b32Q1.jpg', reddit_score: 2933, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/oekrrcR.jpg', reddit_score: 2909, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0DrE3QK.jpg', reddit_score: 2886, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/v5eQg.jpg?1', reddit_score: 2882, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vsdNzlx.jpg', reddit_score: 2878, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Iiy89Zr.jpg', reddit_score: 2855, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/7PEKz2E', reddit_score: 2839, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/X7O4wF8.jpg', reddit_score: 2831, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/yIeVjcQ.jpg', reddit_score: 2830, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/61W4Hnd.jpg', reddit_score: 2830, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/A9fpqhF.jpg', reddit_score: 2825, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/fN4TvGe.jpg', reddit_score: 2792, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zAelh.jpg', reddit_score: 2772, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/SgCl3lC', reddit_score: 2772, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/p7joj.jpg?1', reddit_score: 2733, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/W64PKED.jpg', reddit_score: 2714, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/AMVqX2w.jpg', reddit_score: 2707, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Eaadi7j', reddit_score: 2706, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QWRLlFp.jpg', reddit_score: 2698, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZEEngzH.jpg', reddit_score: 2695, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/s0p8DB5.jpg', reddit_score: 2693, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/oc8AsLF', reddit_score: 2685, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jsoGpfp.jpg', reddit_score: 2676, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cB54A3e.jpg', reddit_score: 2668, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Tkq5eQs.jpg', reddit_score: 2657, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Ni4Amam', reddit_score: 2639, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/BLygt.jpg', reddit_score: 2643, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/JvSryzq.jpg', reddit_score: 2605, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tXjkaWk.jpg', reddit_score: 2601, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Bdjx0JC.jpg', reddit_score: 2592, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pS0ho9S.jpg', reddit_score: 2592, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/PqCkZ05.jpg', reddit_score: 2590, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6d6P8.jpg', reddit_score: 2591, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/r1kslRX.jpg', reddit_score: 2583, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Wj6acBM.jpg', reddit_score: 2571, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WTOEcNt.jpg', reddit_score: 2566, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tNDMA0W.jpg', reddit_score: 2568, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/v9fz0b8', reddit_score: 2565, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qiXfd.jpg', reddit_score: 2556, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Kwlo6.jpg', reddit_score: 2550, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/rBWHhee', reddit_score: 2543, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZrwWsZk.jpg', reddit_score: 2542, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cceRyLi.jpg', reddit_score: 2541, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/08W0zJv.jpg', reddit_score: 2533, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/59o5N.jpg', reddit_score: 2525, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/fgvKPk3.jpg', reddit_score: 2530, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0OD1Xlj.jpg', reddit_score: 2525, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jEXrW3m.jpg', reddit_score: 2513, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/S7twh.jpg', reddit_score: 2515, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4YcwtBp.jpg?1', reddit_score: 2512, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Ay9XYaq.jpg', reddit_score: 2502, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/sG8pHCI', reddit_score: 2504, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mBpgfPo.jpg', reddit_score: 2499, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/9kFW1Lr.jpg', reddit_score: 2495, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/2rmOl.jpg', reddit_score: 2492, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/CnI7Lrx.jpg', reddit_score: 2483, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/p5LqmpD.jpg', reddit_score: 2466, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/77MLgiM.jpg', reddit_score: 2458, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vCJhsdx.jpg', reddit_score: 2462, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/EmC86', reddit_score: 2455, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/izc3LWX.jpg', reddit_score: 2441, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/8YenNqa', reddit_score: 2440, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jF7ds1H.jpg', reddit_score: 2443, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ia2aolC.jpg', reddit_score: 2432, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QvLJxyQ.jpg', reddit_score: 2410, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/XD1Ss.jpg', reddit_score: 2412, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/h2rjqa9', reddit_score: 2405, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0XYwe.jpg', reddit_score: 2402, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/7fljPY4.jpg', reddit_score: 2398, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mtRfDpr.jpg', reddit_score: 2380, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/kF6YI', reddit_score: 2384, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zIikJZd.jpg', reddit_score: 2385, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WXsoV.jpg', reddit_score: 2380, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/FA6AzsO.jpg', reddit_score: 2363, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/k3iv8sj.jpg', reddit_score: 2356, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wEOPCXa.jpg', reddit_score: 2344, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/MlUrZDJ.jpg', reddit_score: 2345, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cqSNMML.jpg', reddit_score: 2344, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/4CkRw9C', reddit_score: 2338, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Owj2PZx.jpg', reddit_score: 2337, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Nf8PG', reddit_score: 2335, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/BTCJXbU.jpg', reddit_score: 2322, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/79gVnGo.jpg', reddit_score: 2312, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5aDI3.jpg?1', reddit_score: 2309, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/lPqCdtr.jpg', reddit_score: 2310, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/YachKWl', reddit_score: 2289, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/P6XwfBF.jpg', reddit_score: 2287, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/k3BkF9L.jpg', reddit_score: 2283, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/9wdEl.jpg', reddit_score: 2283, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tkDc2yY.jpg', reddit_score: 2272, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5x26Ryy.jpg', reddit_score: 2275, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nMPRSFA.jpg', reddit_score: 2273, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/TrpNd0j.jpg', reddit_score: 2265, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/gKsqS.jpg', reddit_score: 2271, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/PWWwW', reddit_score: 2267, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/8EdPJfF.jpg', reddit_score: 2264, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZVav7.jpg', reddit_score: 2268, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dSpUr9i.jpg', reddit_score: 2260, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/kBsUbsT.jpg', reddit_score: 2262, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Y5PIi.jpg', reddit_score: 2255, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7LRvUc9.jpg', reddit_score: 2259, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0Tzqwwq.jpg', reddit_score: 2261, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sQ46eLP.jpg', reddit_score: 2252, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/fgGKby0.jpg', reddit_score: 2247, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/HsASkTP', reddit_score: 2244, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/uXciV3T.jpg', reddit_score: 2244, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/orZxnSS.jpg', reddit_score: 2235, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/BixloBB', reddit_score: 2237, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/xd7jc', reddit_score: 2230, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/YkFPcHv.jpg', reddit_score: 2216, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/4oauDvX', reddit_score: 2218, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/PjEed', reddit_score: 2217, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wZhvGn5.jpg', reddit_score: 2212, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/KkOk7.jpg', reddit_score: 2204, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/bzhYir6', reddit_score: 2210, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dZPqL.jpg', reddit_score: 2188, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/6FJAANZ', reddit_score: 2192, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/DIXuOX9.jpg', reddit_score: 2181, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jEDGGSi.jpg', reddit_score: 2174, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/EiGWi', reddit_score: 2163, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RI9Mk7C.jpg', reddit_score: 2167, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/O1VLBeK', reddit_score: 2166, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tRnsNoR.jpg', reddit_score: 2158, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Rh36UEC', reddit_score: 2157, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/knxFIvx.jpg', reddit_score: 2155, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ILPDhPm.jpg?1', reddit_score: 2156, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HGGp1.jpg', reddit_score: 2158, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pj2rrdw.jpg', reddit_score: 2155, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/DTdIiwC.jpg', reddit_score: 2151, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/td0EhLW', reddit_score: 2144, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vj30j.jpg', reddit_score: 2147, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6kZKOIF.jpg', reddit_score: 2138, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/aj8m9Fk.jpg', reddit_score: 2137, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/fpFqe.jpg', reddit_score: 2135, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/SfzVWxD.jpg', reddit_score: 2132, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/IozDqH2', reddit_score: 2125, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/rCTlnMY.jpg', reddit_score: 2126, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jvKIAdW.jpg', reddit_score: 2119, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WITqgtz.jpg', reddit_score: 2117, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/usTsG.jpg', reddit_score: 2111, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IuWCb.jpg', reddit_score: 2094, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/YBf9f', reddit_score: 2091, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7C20HZJ.jpg', reddit_score: 2087, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1dV46.jpg', reddit_score: 2084, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qAub9.jpg', reddit_score: 2071, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/SF3Pn6Z', reddit_score: 2062, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dJ46O.jpg', reddit_score: 2063, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/8YgZzJe.jpg', reddit_score: 2060, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/DBsV25G.jpg', reddit_score: 2062, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RGme5Tw.jpg', reddit_score: 2058, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/13gvvBx.jpg', reddit_score: 2060, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4qud98S.jpg', reddit_score: 2054, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7jpEQrF.jpg', reddit_score: 2055, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RZCLwfH.jpg', reddit_score: 2051, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/PriibqZ', reddit_score: 2046, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/3oBtlXN.jpg?1', reddit_score: 2046, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/hdPgFxJ', reddit_score: 2041, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cE6Sv.jpg', reddit_score: 2044, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RsVSxwh.jpg', reddit_score: 2031, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/6RncxUU', reddit_score: 2036, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/t8Wurf5', reddit_score: 2023, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qbcfaUu.jpg', reddit_score: 2021, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/xha1H.jpg', reddit_score: 2016, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/gqRfT.jpg', reddit_score: 2011, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/hQurH.jpg', reddit_score: 1995, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tl8ei.jpg', reddit_score: 1998, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/hBNwrLT.jpg', reddit_score: 1991, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jEN5BB9.jpg', reddit_score: 1990, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/aJ00w.jpg', reddit_score: 1989, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/rtLUEZ7.jpg', reddit_score: 1978, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/xjQ3jWR', reddit_score: 1974, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HzGcf.jpg', reddit_score: 1957, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/x8K1S.jpg', reddit_score: 1959, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/M8byg.jpg', reddit_score: 1953, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/X7SpYrj', reddit_score: 1955, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/304kX.jpg', reddit_score: 1949, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/l4HlNBb.jpg', reddit_score: 1944, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/TMDbrjY.jpg', reddit_score: 1942, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/8hw748G.jpg', reddit_score: 1939, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/a5bwK.jpg', reddit_score: 1943, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/MnhCg.png', reddit_score: 1937, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/O7MM0', reddit_score: 1930, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4iOhRgS.jpg', reddit_score: 1924, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/hug0XGS.jpg', reddit_score: 1924, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QeE0WY5.jpg', reddit_score: 1926, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/8aX07js.jpg', reddit_score: 1920, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ykkZ5.jpg', reddit_score: 1918, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/HoJ1e26', reddit_score: 1911, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/BEpyK.jpg', reddit_score: 1910, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/IYOnWLp', reddit_score: 1903, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zcqHZ.jpg', reddit_score: 1903, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Rr5tJT5.jpg', reddit_score: 1906, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/UjvQcVd.jpg', reddit_score: 1902, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/XUL5hh0.jpg', reddit_score: 1900, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/yVe5f.jpg', reddit_score: 1895, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/KW8uZQo.jpg', reddit_score: 1891, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pDFTCMt.jpg', reddit_score: 1891, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/rl6xcVf', reddit_score: 1885, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5NHVW.jpg', reddit_score: 1882, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QsvvKYV.jpg', reddit_score: 1872, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sTLr5.jpg', reddit_score: 1878, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tSrs2.jpg', reddit_score: 1871, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/XgXGk2Y.jpg', reddit_score: 1869, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/IW5Yq7C', reddit_score: 1870, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pxBcq.jpg', reddit_score: 1865, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7Mppm.jpg', reddit_score: 1870, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ChOij.jpg?rd', reddit_score: 1863, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nrXsL.jpg', reddit_score: 1858, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/gvWLx', reddit_score: 1861, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jwzYL.jpg', reddit_score: 1852, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZmZnA.jpg', reddit_score: 1846, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ayOoZ4w.jpg', reddit_score: 1853, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qlfmIdX.jpg', reddit_score: 1851, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HwnOVKJ.jpg', reddit_score: 1848, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/I8q5TMJ.jpg', reddit_score: 1846, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ECDlb.jpg', reddit_score: 1840, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1YjteIr.jpg', reddit_score: 1837, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HNLEpi6.jpg', reddit_score: 1840, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/OvL66.jpg', reddit_score: 1831, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/oZW8SfX.jpg', reddit_score: 1827, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QdrEIK9.jpg', reddit_score: 1829, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/z6YmoG2.jpg', reddit_score: 1831, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dcihl.jpg', reddit_score: 1822, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/YHE4OJx.jpg', reddit_score: 1815, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/W5YKS4F.jpg', reddit_score: 1818, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0kaBQcz.jpg', reddit_score: 1811, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dY44stI.jpg', reddit_score: 1810, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/76j0A.jpg', reddit_score: 1801, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/YAUwrW9.jpg', reddit_score: 1805, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/BFWLK0X', reddit_score: 1797, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/kYSWkmD.jpg', reddit_score: 1797, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/VuorM.jpg', reddit_score: 1793, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RhBFe.jpg', reddit_score: 1787, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cZrJCbw.jpg', reddit_score: 1792, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/FMnhwbw.jpg', reddit_score: 1786, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mf3F8YV.jpg', reddit_score: 1785, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/PgVnr.jpg', reddit_score: 1779, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/xwwAL.jpg', reddit_score: 1766, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/2hdGDzw.jpg', reddit_score: 1763, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1fPhuWK.jpg', reddit_score: 1766, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/EHUpa1b.jpg', reddit_score: 1763, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/S0ipi.jpg', reddit_score: 1769, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/VRVPK.jpg', reddit_score: 1768, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/QZrqQ5s', reddit_score: 1764, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/2YguVgO.jpg', reddit_score: 1759, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Cno3f.jpg', reddit_score: 1754, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/t6eK9Bm.jpg', reddit_score: 1758, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Kf8WX.jpg', reddit_score: 1756, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/26xjU.jpg', reddit_score: 1752, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4mjsF0m.jpg', reddit_score: 1758, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qhETn.jpg', reddit_score: 1748, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cPLpu8S.jpg', reddit_score: 1747, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/1YUVjjq', reddit_score: 1749, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/VUcM04V', reddit_score: 1740, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/hES0Q.jpg', reddit_score: 1738, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7kU0Lh.jpg', reddit_score: 1724, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/K2xrFoj.jpg', reddit_score: 1715, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/KMeZH.jpg', reddit_score: 1720, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/s7XGy3N.jpg', reddit_score: 1719, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/B5VzzFW', reddit_score: 1701, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4NP5rc6.jpg', reddit_score: 1703, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WOOQ2.jpg', reddit_score: 1691, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Tf065mq.jpg', reddit_score: 1694, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/SoVPC.jpg', reddit_score: 1688, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/K7Vpq.jpg', reddit_score: 1684, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/tfs1Gp9', reddit_score: 1687, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/lOuh2.jpg', reddit_score: 1683, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wyUz3qa.jpg', reddit_score: 1674, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/qIn7P8i', reddit_score: 1669, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/JqLZS.jpg', reddit_score: 1664, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/u1FCrkY.jpg', reddit_score: 1660, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cfCJLdI.jpg', reddit_score: 1655, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4Bv2JyU.jpg', reddit_score: 1653, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/RToEwNh', reddit_score: 1646, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5wSLb.jpg', reddit_score: 1641, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WmIeC0Q.jpg', reddit_score: 1645, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/n820h.jpg', reddit_score: 1645, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6Qb9Z.jpg', reddit_score: 1642, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jAHPl.jpg', reddit_score: 1639, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/yghD65T.jpg', reddit_score: 1638, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7X4cwqo.jpg', reddit_score: 1631, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Rbk5g.jpg', reddit_score: 1635, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Ds1q6.jpg', reddit_score: 1632, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dwOGvxe.jpg', reddit_score: 1626, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/S7HT6.jpg', reddit_score: 1618, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Zneur.jpg', reddit_score: 1614, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/POlq11r.jpg', reddit_score: 1605, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/q1kvX.jpg', reddit_score: 1597, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/hG3nh.jpg', reddit_score: 1593, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/XG3DPmy', reddit_score: 1601, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/poO44.jpg', reddit_score: 1589, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/t3mu4.jpg', reddit_score: 1589, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/VLgi8.jpg', reddit_score: 1582, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/W5zmpmH.jpg', reddit_score: 1580, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/E2RPWEi.jpg', reddit_score: 1586, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/txy1hnI', reddit_score: 1580, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IH4Gi.jpg', reddit_score: 1580, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/E1b3Zgw.jpg', reddit_score: 1577, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/EwYKk.jpg', reddit_score: 1561, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/l6vDV.jpg', reddit_score: 1557, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wTR1X.jpg', reddit_score: 1553, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1qoeA.jpg', reddit_score: 1555, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/WUaWS', reddit_score: 1546, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/doSKI.jpg', reddit_score: 1546, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/3IfC4.jpg', reddit_score: 1545, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cDa0brP.jpg', reddit_score: 1542, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/TO3J0.jpg', reddit_score: 1541, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/OuxKxGj.jpg', reddit_score: 1541, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tNrzt.jpg', reddit_score: 1535, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/XnrgZ.jpg', reddit_score: 1532, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jXs5H.jpg', reddit_score: 1536, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/gIzDrz0.jpg', reddit_score: 1531, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Ealu9.jpg', reddit_score: 1537, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Hmf0Jcz.jpg', reddit_score: 1531, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nIttO.jpg', reddit_score: 1529, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/OPv1i.jpg', reddit_score: 1530, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/03rKyzG.jpg', reddit_score: 1525, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0co3zpn.jpg', reddit_score: 1522, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6YfgIOB.jpg', reddit_score: 1528, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/YyXhA.jpg', reddit_score: 1522, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tfzpU.jpg', reddit_score: 1514, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/DVHB0.jpg', reddit_score: 1509, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/XUg0WSH.jpg', reddit_score: 1504, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4EZEAaP.jpg', reddit_score: 1504, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/iRKBX3y.jpg', reddit_score: 1505, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WJQmm.jpg', reddit_score: 1500, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dFiVl.jpg', reddit_score: 1494, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/eNiNUC7.jpg?1', reddit_score: 1493, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/VeNfdGs.jpg', reddit_score: 1490, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ChOij.jpg', reddit_score: 1492, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/fZqpq.jpg', reddit_score: 1488, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/xSQeE', reddit_score: 1492, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/SdgZq.jpg', reddit_score: 1485, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/l4Hmg.jpg', reddit_score: 1489, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/jQTFqGK', reddit_score: 1487, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZTTbj.jpg', reddit_score: 1484, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/IhVFz', reddit_score: 1479, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/W7kdQ.jpg', reddit_score: 1472, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/zvmI0', reddit_score: 1474, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/2kxuY', reddit_score: 1470, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tFIsy.jpg', reddit_score: 1474, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sdeVD.jpg', reddit_score: 1473, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/BZARv', reddit_score: 1459, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ExDC2.jpg', reddit_score: 1461, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vFcPf.jpg', reddit_score: 1463, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HeOoC.jpg', reddit_score: 1462, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/E0QWj8T.jpg?1', reddit_score: 1456, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zQdHF.jpg', reddit_score: 1451, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/JYTm6Zh.jpg', reddit_score: 1451, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0f8Vvbn.jpg', reddit_score: 1448, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/v3R1RMT.jpg', reddit_score: 1445, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/hk7DFNb.jpg', reddit_score: 1448, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/UEm3B', reddit_score: 1452, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/eIJ8v.jpg', reddit_score: 1440, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/y8IIw.jpg', reddit_score: 1442, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/NM5ni.jpg', reddit_score: 1438, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/K5zZY', reddit_score: 1431, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/npdSs.jpg', reddit_score: 1435, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/e45NM1J.jpg', reddit_score: 1431, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/A1mZMwG.jpg', reddit_score: 1421, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/xvZJo.jpg', reddit_score: 1422, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/O8u2A.jpg', reddit_score: 1426, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/TSri2.jpg', reddit_score: 1426, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/8cHBv.jpg', reddit_score: 1413, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/K2ALj.jpg', reddit_score: 1411, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/m3JtJ.jpg', reddit_score: 1400, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Z0wxH.jpg', reddit_score: 1393, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mK2Upsq.jpg', reddit_score: 1387, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7qUwn.jpg', reddit_score: 1393, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/fn4sY', reddit_score: 1388, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/rkYLHOM.jpg', reddit_score: 1387, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6CwymVn.jpg', reddit_score: 1382, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qCDth.jpg', reddit_score: 1388, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6OwNv.jpg', reddit_score: 1383, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/BsMw5.jpg', reddit_score: 1379, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/oWqu9tK.jpg', reddit_score: 1380, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/swu2y.jpg', reddit_score: 1375, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/JredO.jpg', reddit_score: 1374, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/i2m6k.jpg', reddit_score: 1372, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wMBC0.jpg', reddit_score: 1369, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/MGfaX.jpg', reddit_score: 1360, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/gldkG.jpg', reddit_score: 1366, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IFvUweU.jpg', reddit_score: 1355, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Mw4zX.jpg', reddit_score: 1351, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/b53g6HK.jpg', reddit_score: 1356, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1hOtC.jpg', reddit_score: 1351, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6AYIH.jpg', reddit_score: 1349, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/u9qL3.jpg', reddit_score: 1348, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/t8C2v.jpg', reddit_score: 1348, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/eoRB4.jpg', reddit_score: 1346, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/V0hBO', reddit_score: 1343, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/t1jjlwj.jpg', reddit_score: 1334, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tQSaM.jpg', reddit_score: 1338, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/YJJHKpi.jpg', reddit_score: 1342, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/UceS1IB.jpg', reddit_score: 1340, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/rqJI9', reddit_score: 1335, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7AlKm.png', reddit_score: 1332, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/44bwVe1', reddit_score: 1334, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mFYv4.jpg', reddit_score: 1334, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/aZXzcK9.jpg', reddit_score: 1324, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sxtfa.png', reddit_score: 1326, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/rvz8L.jpg', reddit_score: 1329, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/LbngE.jpg', reddit_score: 1324, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6Aj2B.jpg', reddit_score: 1327, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/4SXysV3', reddit_score: 1314, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QeacuZT.jpg', reddit_score: 1317, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/2ZnVV.jpg', reddit_score: 1314, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Pjnjy', reddit_score: 1309, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/d0ZnT', reddit_score: 1313, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/w6OSv.jpg', reddit_score: 1299, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/FfH2q.jpg', reddit_score: 1294, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/U0LRe.jpg', reddit_score: 1288, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/alfPy.jpg', reddit_score: 1287, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Z9HLd.jpg', reddit_score: 1286, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZenQ81N.jpg', reddit_score: 1284, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nKl9r.jpg', reddit_score: 1288, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Cxofw', reddit_score: 1285, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zMQB8aI.jpg', reddit_score: 1282, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/spS9K', reddit_score: 1282, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vsIBx.jpg', reddit_score: 1275, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6CrUgPy.jpg', reddit_score: 1272, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Kvd6y.jpg', reddit_score: 1274, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZkgzK.jpg', reddit_score: 1266, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/w7UDC.jpg', reddit_score: 1272, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/fbfIXF9.jpg', reddit_score: 1265, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/a0o5pIG.jpg', reddit_score: 1269, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QXF7hTxh.jpg', reddit_score: 1260, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ELKni.jpg', reddit_score: 1255, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IWfvZ.jpg', reddit_score: 1255, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5kTnP.jpg', reddit_score: 1252, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/tRh3V.jpg', reddit_score: 1258, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/x1n5Ewl.jpg', reddit_score: 1249, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/NaMkG.jpg', reddit_score: 1250, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/epZoq', reddit_score: 1250, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Z6foz', reddit_score: 1237, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jlL7C.jpg', reddit_score: 1236, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/PRH1v.jpg', reddit_score: 1232, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mUvjx.jpg', reddit_score: 1233, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0D3Ui.jpg', reddit_score: 1230, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ICmZt.jpg?1', reddit_score: 1227, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1JMWw.jpg', reddit_score: 1225, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/oUfX7.jpg', reddit_score: 1224, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/eMzWNON', reddit_score: 1218, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/lQpCG4s.jpg?1', reddit_score: 1223, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/SRB5u.jpg', reddit_score: 1217, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/PAtA1.jpg', reddit_score: 1226, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/anjZF', reddit_score: 1213, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/T5BMn.jpg', reddit_score: 1204, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/JxiFG', reddit_score: 1206, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/gU9fD.jpg', reddit_score: 1205, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/yurgVN1', reddit_score: 1201, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/aAfXK', reddit_score: 1199, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/BZW8M.jpg', reddit_score: 1189, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/CnrUp.jpg', reddit_score: 1185, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4OqHa.jpg', reddit_score: 1187, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/lqaii.jpg', reddit_score: 1178, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/iFltx', reddit_score: 1180, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/zmgW0', reddit_score: 1176, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/GMjm3JR', reddit_score: 1167, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/t74h9.jpg', reddit_score: 1173, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pLuGC.jpg', reddit_score: 1160, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/DOyt1.jpg', reddit_score: 1162, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5DX2dlX.jpg', reddit_score: 1157, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6LMtn.jpg', reddit_score: 1163, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/kgWg7.jpg', reddit_score: 1157, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/GutAnMk.jpg', reddit_score: 1157, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wPGUn.jpg', reddit_score: 1163, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5EkG8.jpg', reddit_score: 1153, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/p2lzA', reddit_score: 1151, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Ts4l5', reddit_score: 1147, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6SHDT.jpg', reddit_score: 1153, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/N3GLK.jpg', reddit_score: 1146, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/UQMM5.jpg', reddit_score: 1147, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/hPYxC', reddit_score: 1133, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/b0SPg.jpg', reddit_score: 1135, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/VHSEj.jpg', reddit_score: 1136, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/rmwZK.jpg?1', reddit_score: 1135, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/MNMulPZ', reddit_score: 1138, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Yqayi.jpg', reddit_score: 1134, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/I5hfS.jpg', reddit_score: 1137, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zTOff.jpg', reddit_score: 1131, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Ph2IL.jpg', reddit_score: 1134, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/aSpl2T7.jpg', reddit_score: 1130, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/OorhILF.jpg', reddit_score: 1131, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/L8zPl.jpg', reddit_score: 1127, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Va3OM.jpg', reddit_score: 1122, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/H5ZUz.jpg', reddit_score: 1124, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/XUuWx8C.jpg', reddit_score: 1119, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vQ9QY.jpg', reddit_score: 1127, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/3yPsH.jpg', reddit_score: 1115, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Gq1Ua.jpg', reddit_score: 1116, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4fJ1y.jpg', reddit_score: 1120, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QQ7vP.jpg', reddit_score: 1116, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/opQdW.jpg', reddit_score: 1117, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/bBFOA.jpg', reddit_score: 1109, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qK0ddzr.jpg', reddit_score: 1106, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/DiohQ.jpg', reddit_score: 1112, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IvaXg.jpg', reddit_score: 1108, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sCtI8.jpg', reddit_score: 1104, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/W6usb.jpg', reddit_score: 1096, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/SyZUQ', reddit_score: 1097, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IJUh4.jpg', reddit_score: 1091, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ywAjl.jpg', reddit_score: 1089, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/jgIUUFN.jpg', reddit_score: 1095, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/KxGmb.jpg', reddit_score: 1085, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/prWgu.jpg', reddit_score: 1088, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nH0PG.jpg', reddit_score: 1082, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/2eiVx.jpg', reddit_score: 1085, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/EqFNI.jpg', reddit_score: 1085, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/884zh.jpg', reddit_score: 1083, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/CJZOo', reddit_score: 1076, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/I1d1w2P.jpg', reddit_score: 1079, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mAIyC.jpg', reddit_score: 1081, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/swQqP.jpg', reddit_score: 1073, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/U7shT.jpg', reddit_score: 1071, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nukB9.jpg', reddit_score: 1074, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/3sFL0h0.jpg', reddit_score: 1067, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Hh0PK.jpg', reddit_score: 1066, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dxGb2uZ.jpg', reddit_score: 1066, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vM9sozB.jpg', reddit_score: 1058, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IRaT3.jpg', reddit_score: 1058, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/AJgBS.jpg', reddit_score: 1063, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/4FkkaQe.jpg', reddit_score: 1054, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RHADN.jpg', reddit_score: 1055, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/T27gX.jpg', reddit_score: 1055, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6C87d.jpg', reddit_score: 1053, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/LRMy8.jpg', reddit_score: 1054, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/P2GMc.jpg', reddit_score: 1049, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WDSqZ.jpg', reddit_score: 1049, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/irzaI.jpg', reddit_score: 1050, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Mmb9K.jpg', reddit_score: 1047, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/aRQD7.jpg', reddit_score: 1045, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/5ZzaB', reddit_score: 1037, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/3wzpBmg.jpg', reddit_score: 1037, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/MqHwe', reddit_score: 1030, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5rRUj.jpg', reddit_score: 1032, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/REJst.jpg', reddit_score: 1027, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/5j5Dt', reddit_score: 1033, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Yt609.jpg', reddit_score: 1032, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0lEeI.jpg', reddit_score: 1026, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/MJRFP.jpg', reddit_score: 1022, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/imIT4.jpg', reddit_score: 1025, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/acpe9.jpg', reddit_score: 1022, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/YMRoa.jpg', reddit_score: 1022, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ggoIC.jpg', reddit_score: 1021, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IeBfY69.jpg', reddit_score: 1015, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/QgO2N.jpg', reddit_score: 1016, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5ANFj.jpg', reddit_score: 1007, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/lYTag9Y.jpg', reddit_score: 1006, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/9AmmK.jpg', reddit_score: 1003, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZUkni.jpg', reddit_score: 1006, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sGWchrU.jpg', reddit_score: 1003, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/uOhe7Ao.jpg', reddit_score: 1003, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/R2A1t.jpg', reddit_score: 1003, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mc3CC.jpg', reddit_score: 999, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/uxibU.jpg', reddit_score: 998, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/RQkZH', reddit_score: 997, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0XiGq.jpg', reddit_score: 990, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/89wxs.jpg', reddit_score: 995, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/B7Tv8.jpg?1CASCADA DE', reddit_score: 996, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/M7w83.jpg', reddit_score: 993, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WggrN.jpg', reddit_score: 998, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/bjxgb.jpg', reddit_score: 989, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/9UcOE0n.jpg', reddit_score: 989, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/r1xM0.jpg', reddit_score: 989, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/c3hC3', reddit_score: 988, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cRsVV.jpg', reddit_score: 992, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/bEvXs', reddit_score: 986, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6gtn8xq.jpg', reddit_score: 983, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/3wapG.jpg', reddit_score: 984, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qmNCX.jpg', reddit_score: 983, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/GTRyD.jpg', reddit_score: 987, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Ffjio', reddit_score: 982, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/HdMhPqq', reddit_score: 976, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/kMDWU.jpg', reddit_score: 975, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/BvbPE.jpg', reddit_score: 972, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/vcwzU.jpg', reddit_score: 964, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wH0c3.jpg', reddit_score: 963, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/9Za5Y.jpg', reddit_score: 961, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qZHrg.jpg', reddit_score: 964, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/aPvlN', reddit_score: 959, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/SFUUd', reddit_score: 961, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WpLyF.jpg', reddit_score: 958, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/9XQbI.jpg', reddit_score: 962, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HHy4J.jpg', reddit_score: 958, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/0jb83hw.jpg', reddit_score: 956, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zDAAm.jpg', reddit_score: 948, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HiGKKu2.jpg', reddit_score: 957, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/AlLJsZ6.png', reddit_score: 949, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/SKFNr.jpg', reddit_score: 945, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/YB81Z.jpg', reddit_score: 947, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/UllVL.jpg', reddit_score: 944, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RDSRY.jpg', reddit_score: 940, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/gShjX', reddit_score: 939, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/Z3uyRIY', reddit_score: 943, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/S06kdIU.jpg', reddit_score: 936, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/dLjcZUA.jpg', reddit_score: 928, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Aqjqx.jpg', reddit_score: 930, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Umu2h.jpg', reddit_score: 925, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/OqX4n.jpg', reddit_score: 922, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/erslQ.jpg', reddit_score: 925, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/OegyB.jpg', reddit_score: 926, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/5optv.jpg', reddit_score: 921, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/66DJK.jpg', reddit_score: 915, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/HKnGk.jpg', reddit_score: 914, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/2td4DXw', reddit_score: 914, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/XfS0c.jpg', reddit_score: 913, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/qLj9b', reddit_score: 912, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ePRKH.jpg', reddit_score: 906, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7FQU0qL.jpg', reddit_score: 903, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IsUoC.jpg', reddit_score: 907, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1mbPV.jpg', reddit_score: 903, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1USIF4i.jpg', reddit_score: 904, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/xTggstQh.jpg', reddit_score: 897, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Weeks.jpg', reddit_score: 895, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/fnxC79u.jpg', reddit_score: 894, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RUzZLxY.jpg', reddit_score: 895, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sSxRO.jpg', reddit_score: 894, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/wvz67.jpg', reddit_score: 897, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/WiCXp.jpg', reddit_score: 890, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/mENvy.jpg', reddit_score: 890, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/69sKy', reddit_score: 883, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/oJYOgNC.jpg', reddit_score: 886, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/SOIxuPn.jpg', reddit_score: 878, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/7JebV', reddit_score: 883, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ij83C.jpg', reddit_score: 877, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/DQ3JumK.jpg', reddit_score: 875, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/F0yMX.jpg', reddit_score: 879, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/YD4luTY', reddit_score: 870, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/bytyA.jpg', reddit_score: 864, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/iIkptlc.jpg', reddit_score: 870, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/MTAeB', reddit_score: 863, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/NADGo.jpg?1', reddit_score: 867, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/sH6EM.jpg', reddit_score: 859, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/cEEDF.jpg', reddit_score: 861, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/4O9mL', reddit_score: 860, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/gNfdm.jpg', reddit_score: 854, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/IIYvEoL.jpg', reddit_score: 855, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RPXkJF8.jpg', reddit_score: 858, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6kwPL.jpg', reddit_score: 845, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/ZiV84Uu.jpg', reddit_score: 851, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/PpJmM.jpg', reddit_score: 844, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/RdzBI.jpg', reddit_score: 842, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pQBIn.jpg', reddit_score: 842, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Trn0i.jpg', reddit_score: 846, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/u6MJe.jpg', reddit_score: 837, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1dO4G.jpg', reddit_score: 839, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/hsUEV.jpg', reddit_score: 830, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pzFyyIt.jpg', reddit_score: 835, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/aApi3.jpg?1', reddit_score: 832, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/r3i3e.jpg', reddit_score: 835, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/zD3dk', reddit_score: 830, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/S5Hum.jpg', reddit_score: 830, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/OTIL6.jpg', reddit_score: 827, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/aDkrp.jpg', reddit_score: 828, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6qWARlp.jpg', reddit_score: 823, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Wv7k0.jpg', reddit_score: 823, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/lQQho', reddit_score: 821, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nN2B9.jpg', reddit_score: 823, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/1BLPZ.jpg', reddit_score: 815, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/CFLrz.jpg', reddit_score: 815, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/3Stiv.jpg', reddit_score: 810, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/pzlRp.jpg', reddit_score: 811, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/6bZwH.jpg', reddit_score: 809, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/Ois17.jpg', reddit_score: 811, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/4wgifvJ', reddit_score: 807, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/2ulYl.jpg', reddit_score: 809, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/rvhTg.jpg', reddit_score: 809, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/EypVX.jpg', reddit_score: 808, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nvFoy.jpg', reddit_score: 801, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/nHPTk.jpg', reddit_score: 800, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/kUxnN.jpg', reddit_score: 800, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zHxhdsg.jpg', reddit_score: 797, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/laAPI.jpg', reddit_score: 796, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/qvuwe.jpg', reddit_score: 794, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/j8wVa.jpg', reddit_score: 798, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://imgur.com/5ZrBa7f', reddit_score: 793, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/GIJ1N.jpg', reddit_score: 792, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/7RV76.jpg', reddit_score: 787, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
        begin
          Image.create!(url: 'http://i.imgur.com/zvz2y.jpg', reddit_score: 783, subreddit: 'earthporn')
          counter += 1
        rescue
          dup_counter += 1
        end
    puts "Links added: #{counter}  Duplicate links: #{dup_counter}"
    end
    end
