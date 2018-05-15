if( WIN32 )
  if ( MSVC )
    add_custom_command(TARGET worldserver
      POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_MOD_AHBOT_DIR}/conf/mod_ahbot.conf.dist" ${CMAKE_BINARY_DIR}/bin/$(ConfigurationName)/
	  COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_MOD_AHBOT_DIR}/sql/world.auctionhousebot.sql" ${CMAKE_SOURCE_DIR}/data/sql/custom/db_world/
    )
  elseif ( MINGW )
    add_custom_command(TARGET worldserver
      POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_MOD_AHBOT_DIR}/conf/mod_ahbot.conf.dist" ${CMAKE_BINARY_DIR}/bin/
	  COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_MOD_AHBOT_DIR}/sql/world.auctionhousebot.sql" ${CMAKE_SOURCE_DIR}/data/sql/custom/db_world/
    )
  endif()
endif()

install(FILES "${CMAKE_MOD_AHBOT_DIR}/conf/mod_ahbot.conf.dist" DESTINATION ${CONF_DIR})