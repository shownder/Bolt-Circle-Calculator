--calculate the aspect ratio of the device:
local aspectRatio = display.pixelHeight / display.pixelWidth

application = {
   content = {
      width = aspectRatio > 1.5 and 320 or math.ceil( 480 / aspectRatio ),
      height = aspectRatio < 1.5 and 480 or math.ceil( 320 * aspectRatio ),
      scale = "letterBox",
      fps = 30,

      imageSuffix = {
         ["@2x"] = 1.5,
         ["@4x"] = 3.0,
      },
   },
   SpriteHelperSettings = 
        {
          imagesSubfolder = "Images",
        },
        license =
        {
          google =
          {
            key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA32oOvCKT0RdawkN+UnbjvBX+vOHvXjVnUshZKd+MyL8icuwl2HBG0x7v8sbC5iNGlEgdvAVuVD4E5N0OxHWTb14itA8R6Q0e0Oau586ieJAR1mNXNWC10S0ipokK3n64MdPaXB1S8oaOqEqn87rmODHd5UkiM1uQy+0OFxUhwN5pfbiWaQ5ej+Hzi3FFFXLkXt2jme8/1B20ZIL13HUzT1lZzorqy7n6Qnt18iK/4mttQCZQFJcsXP0b2YlJJoc+oPqB6ODiv2qb6SRjs+v4X69SHsr2331YZTaba15q3tUMQRgGjWQcdc0UyFN/jjcm7B4UfiPFppj6pD8rZCWOLQIDAQAB",
            policy = "serverManaged",
          },
        }
}

-- if string.sub(system.getInfo("model"),1,4) == "iPad" then
--     application = 
--     {
--         content =
--         {
--             width = 360,
--             height = 480,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
-- 		{
-- 			imagesSubfolder = "Images",
-- 		},
--         notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                 }
--             }
--         }
--     }

-- elseif string.sub(system.getInfo("model"),1,2) == "iP" and display.pixelHeight > 960 then
--     application = 
--     {
--         content =
--         {
--             width = 320,
--             height = 568,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
-- 		{
-- 			imagesSubfolder = "Images",
-- 		},
--         notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                 }
--             }
--         }
--     }

-- elseif string.sub(system.getInfo("model"),1,2) == "iP" then
--     application = 
--     {
--         content =
--         {
--             width = 320,
--             height = 480,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
-- 		{
-- 			imagesSubfolder = "Images",
-- 		},
--         notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                 }
--             }
--         }
--     }
-- elseif display.pixelHeight / display.pixelWidth > 1.72 then
--     application = 
--     {
--         content =
--         {
--             width = 320,
--             height = 570,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
--         {
--           imagesSubfolder = "Images",
--         },
--         license =
--         {
--           google =
--           {
--             key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA32oOvCKT0RdawkN+UnbjvBX+vOHvXjVnUshZKd+MyL8icuwl2HBG0x7v8sbC5iNGlEgdvAVuVD4E5N0OxHWTb14itA8R6Q0e0Oau586ieJAR1mNXNWC10S0ipokK3n64MdPaXB1S8oaOqEqn87rmODHd5UkiM1uQy+0OFxUhwN5pfbiWaQ5ej+Hzi3FFFXLkXt2jme8/1B20ZIL13HUzT1lZzorqy7n6Qnt18iK/4mttQCZQFJcsXP0b2YlJJoc+oPqB6ODiv2qb6SRjs+v4X69SHsr2331YZTaba15q3tUMQRgGjWQcdc0UyFN/jjcm7B4UfiPFppj6pD8rZCWOLQIDAQAB",
--             policy = "serverManaged",
--           },
--         },
--     }
-- else
--     application = 
--     {
--       content =
--         {
--             width = 320,
--             height = 512,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--       SpriteHelperSettings = 
--         {
--           imagesSubfolder = "Images",
--         },
--       notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                     }
--                 }
--         },
--       license =
--         {
--           google =
--             {
--               key =  "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA32oOvCKT0RdawkN+UnbjvBX+vOHvXjVnUshZKd+MyL8icuwl2HBG0x7v8sbC5iNGlEgdvAVuVD4E5N0OxHWTb14itA8R6Q0e0Oau586ieJAR1mNXNWC10S0ipokK3n64MdPaXB1S8oaOqEqn87rmODHd5UkiM1uQy+0OFxUhwN5pfbiWaQ5ej+Hzi3FFFXLkXt2jme8/1B20ZIL13HUzT1lZzorqy7n6Qnt18iK/4mttQCZQFJcsXP0b2YlJJoc+oPqB6ODiv2qb6SRjs+v4X69SHsr2331YZTaba15q3tUMQRgGjWQcdc0UyFN/jjcm7B4UfiPFppj6pD8rZCWOLQIDAQAB",
--               policy = "serverManaged",
--             },
--         },
--   }
-- end
