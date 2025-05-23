#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c DIO.c Buzzer.c LED.c VButtons.c _7SEG.c LCD8.c LCD4.c Button.c keypad.c EXT_INT.c ADC.c LM35.c timers.c UART.c SPI.c 25AA020A.c TWI.c AT24C16B.c myfreertos/croutine.c myfreertos/event_groups.c myfreertos/heap_4.c myfreertos/list.c myfreertos/port.c myfreertos/queue.c myfreertos/stream_buffer.c myfreertos/tasks.c myfreertos/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/DIO.o ${OBJECTDIR}/Buzzer.o ${OBJECTDIR}/LED.o ${OBJECTDIR}/VButtons.o ${OBJECTDIR}/_7SEG.o ${OBJECTDIR}/LCD8.o ${OBJECTDIR}/LCD4.o ${OBJECTDIR}/Button.o ${OBJECTDIR}/keypad.o ${OBJECTDIR}/EXT_INT.o ${OBJECTDIR}/ADC.o ${OBJECTDIR}/LM35.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/SPI.o ${OBJECTDIR}/25AA020A.o ${OBJECTDIR}/TWI.o ${OBJECTDIR}/AT24C16B.o ${OBJECTDIR}/myfreertos/croutine.o ${OBJECTDIR}/myfreertos/event_groups.o ${OBJECTDIR}/myfreertos/heap_4.o ${OBJECTDIR}/myfreertos/list.o ${OBJECTDIR}/myfreertos/port.o ${OBJECTDIR}/myfreertos/queue.o ${OBJECTDIR}/myfreertos/stream_buffer.o ${OBJECTDIR}/myfreertos/tasks.o ${OBJECTDIR}/myfreertos/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/DIO.o.d ${OBJECTDIR}/Buzzer.o.d ${OBJECTDIR}/LED.o.d ${OBJECTDIR}/VButtons.o.d ${OBJECTDIR}/_7SEG.o.d ${OBJECTDIR}/LCD8.o.d ${OBJECTDIR}/LCD4.o.d ${OBJECTDIR}/Button.o.d ${OBJECTDIR}/keypad.o.d ${OBJECTDIR}/EXT_INT.o.d ${OBJECTDIR}/ADC.o.d ${OBJECTDIR}/LM35.o.d ${OBJECTDIR}/timers.o.d ${OBJECTDIR}/UART.o.d ${OBJECTDIR}/SPI.o.d ${OBJECTDIR}/25AA020A.o.d ${OBJECTDIR}/TWI.o.d ${OBJECTDIR}/AT24C16B.o.d ${OBJECTDIR}/myfreertos/croutine.o.d ${OBJECTDIR}/myfreertos/event_groups.o.d ${OBJECTDIR}/myfreertos/heap_4.o.d ${OBJECTDIR}/myfreertos/list.o.d ${OBJECTDIR}/myfreertos/port.o.d ${OBJECTDIR}/myfreertos/queue.o.d ${OBJECTDIR}/myfreertos/stream_buffer.o.d ${OBJECTDIR}/myfreertos/tasks.o.d ${OBJECTDIR}/myfreertos/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/DIO.o ${OBJECTDIR}/Buzzer.o ${OBJECTDIR}/LED.o ${OBJECTDIR}/VButtons.o ${OBJECTDIR}/_7SEG.o ${OBJECTDIR}/LCD8.o ${OBJECTDIR}/LCD4.o ${OBJECTDIR}/Button.o ${OBJECTDIR}/keypad.o ${OBJECTDIR}/EXT_INT.o ${OBJECTDIR}/ADC.o ${OBJECTDIR}/LM35.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/SPI.o ${OBJECTDIR}/25AA020A.o ${OBJECTDIR}/TWI.o ${OBJECTDIR}/AT24C16B.o ${OBJECTDIR}/myfreertos/croutine.o ${OBJECTDIR}/myfreertos/event_groups.o ${OBJECTDIR}/myfreertos/heap_4.o ${OBJECTDIR}/myfreertos/list.o ${OBJECTDIR}/myfreertos/port.o ${OBJECTDIR}/myfreertos/queue.o ${OBJECTDIR}/myfreertos/stream_buffer.o ${OBJECTDIR}/myfreertos/tasks.o ${OBJECTDIR}/myfreertos/timers.o

# Source Files
SOURCEFILES=main.c DIO.c Buzzer.c LED.c VButtons.c _7SEG.c LCD8.c LCD4.c Button.c keypad.c EXT_INT.c ADC.c LM35.c timers.c UART.c SPI.c 25AA020A.c TWI.c AT24C16B.c myfreertos/croutine.c myfreertos/event_groups.c myfreertos/heap_4.c myfreertos/list.c myfreertos/port.c myfreertos/queue.c myfreertos/stream_buffer.c myfreertos/tasks.c myfreertos/timers.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/fca71971006918238c42a0ebf2d156f37c2c3ff3 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/DIO.o: DIO.c  .generated_files/flags/default/cd1ccfb234f127ca7a558791f7d90a6a0935343b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DIO.o.d 
	@${RM} ${OBJECTDIR}/DIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/DIO.o.d" -MT "${OBJECTDIR}/DIO.o.d" -MT ${OBJECTDIR}/DIO.o -o ${OBJECTDIR}/DIO.o DIO.c 
	
${OBJECTDIR}/Buzzer.o: Buzzer.c  .generated_files/flags/default/521059e50dd8b3614eeca98adf424fefc37c6cf7 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Buzzer.o.d 
	@${RM} ${OBJECTDIR}/Buzzer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Buzzer.o.d" -MT "${OBJECTDIR}/Buzzer.o.d" -MT ${OBJECTDIR}/Buzzer.o -o ${OBJECTDIR}/Buzzer.o Buzzer.c 
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/d4460feb50bd4f1d02cd67d5320677d95e4ce1a5 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LED.o.d" -MT "${OBJECTDIR}/LED.o.d" -MT ${OBJECTDIR}/LED.o -o ${OBJECTDIR}/LED.o LED.c 
	
${OBJECTDIR}/VButtons.o: VButtons.c  .generated_files/flags/default/c0e493f79adc19b7d7acefa26c9a9e418ef233a2 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VButtons.o.d 
	@${RM} ${OBJECTDIR}/VButtons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/VButtons.o.d" -MT "${OBJECTDIR}/VButtons.o.d" -MT ${OBJECTDIR}/VButtons.o -o ${OBJECTDIR}/VButtons.o VButtons.c 
	
${OBJECTDIR}/_7SEG.o: _7SEG.c  .generated_files/flags/default/428241ad3160495ec48eeb4c79b35a1a6da90198 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_7SEG.o.d 
	@${RM} ${OBJECTDIR}/_7SEG.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/_7SEG.o.d" -MT "${OBJECTDIR}/_7SEG.o.d" -MT ${OBJECTDIR}/_7SEG.o -o ${OBJECTDIR}/_7SEG.o _7SEG.c 
	
${OBJECTDIR}/LCD8.o: LCD8.c  .generated_files/flags/default/48a962b078a1e93111f0b8950a3be65af23b4559 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD8.o.d 
	@${RM} ${OBJECTDIR}/LCD8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LCD8.o.d" -MT "${OBJECTDIR}/LCD8.o.d" -MT ${OBJECTDIR}/LCD8.o -o ${OBJECTDIR}/LCD8.o LCD8.c 
	
${OBJECTDIR}/LCD4.o: LCD4.c  .generated_files/flags/default/4808e9aba969474e2e4c64a48919fed342008484 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD4.o.d 
	@${RM} ${OBJECTDIR}/LCD4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LCD4.o.d" -MT "${OBJECTDIR}/LCD4.o.d" -MT ${OBJECTDIR}/LCD4.o -o ${OBJECTDIR}/LCD4.o LCD4.c 
	
${OBJECTDIR}/Button.o: Button.c  .generated_files/flags/default/b680463ed3f1da5dea74fda2d480d3bc6377a200 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Button.o.d 
	@${RM} ${OBJECTDIR}/Button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Button.o.d" -MT "${OBJECTDIR}/Button.o.d" -MT ${OBJECTDIR}/Button.o -o ${OBJECTDIR}/Button.o Button.c 
	
${OBJECTDIR}/keypad.o: keypad.c  .generated_files/flags/default/29aad4e9b9eaa51b0001ea5f97ab756da3a7d5c3 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.o.d 
	@${RM} ${OBJECTDIR}/keypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/keypad.o.d" -MT "${OBJECTDIR}/keypad.o.d" -MT ${OBJECTDIR}/keypad.o -o ${OBJECTDIR}/keypad.o keypad.c 
	
${OBJECTDIR}/EXT_INT.o: EXT_INT.c  .generated_files/flags/default/aa8159f8f88fd1e7f97c58ff2ef086c233c44bee .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EXT_INT.o.d 
	@${RM} ${OBJECTDIR}/EXT_INT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EXT_INT.o.d" -MT "${OBJECTDIR}/EXT_INT.o.d" -MT ${OBJECTDIR}/EXT_INT.o -o ${OBJECTDIR}/EXT_INT.o EXT_INT.c 
	
${OBJECTDIR}/ADC.o: ADC.c  .generated_files/flags/default/e7d45ecb5c88cc4a0e11a6d62ea9983b1783603d .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADC.o.d 
	@${RM} ${OBJECTDIR}/ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ADC.o.d" -MT "${OBJECTDIR}/ADC.o.d" -MT ${OBJECTDIR}/ADC.o -o ${OBJECTDIR}/ADC.o ADC.c 
	
${OBJECTDIR}/LM35.o: LM35.c  .generated_files/flags/default/24cc4f011185ee3903c6c7f8c4174f99197038a6 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LM35.o.d 
	@${RM} ${OBJECTDIR}/LM35.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LM35.o.d" -MT "${OBJECTDIR}/LM35.o.d" -MT ${OBJECTDIR}/LM35.o -o ${OBJECTDIR}/LM35.o LM35.c 
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/24ab3c6e800c2963d4ed130102ac7e72cf1c86e1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/timers.o.d" -MT "${OBJECTDIR}/timers.o.d" -MT ${OBJECTDIR}/timers.o -o ${OBJECTDIR}/timers.o timers.c 
	
${OBJECTDIR}/UART.o: UART.c  .generated_files/flags/default/ad900b89f5866b723b4662c1981798094242052 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/UART.o.d" -MT "${OBJECTDIR}/UART.o.d" -MT ${OBJECTDIR}/UART.o -o ${OBJECTDIR}/UART.o UART.c 
	
${OBJECTDIR}/SPI.o: SPI.c  .generated_files/flags/default/55f7b742e56fa35bc264e6f41603a91ca977fa16 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SPI.o.d 
	@${RM} ${OBJECTDIR}/SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/SPI.o.d" -MT "${OBJECTDIR}/SPI.o.d" -MT ${OBJECTDIR}/SPI.o -o ${OBJECTDIR}/SPI.o SPI.c 
	
${OBJECTDIR}/25AA020A.o: 25AA020A.c  .generated_files/flags/default/7f802588b2914e65f04770fe611c1281c2753e54 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/25AA020A.o.d 
	@${RM} ${OBJECTDIR}/25AA020A.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/25AA020A.o.d" -MT "${OBJECTDIR}/25AA020A.o.d" -MT ${OBJECTDIR}/25AA020A.o -o ${OBJECTDIR}/25AA020A.o 25AA020A.c 
	
${OBJECTDIR}/TWI.o: TWI.c  .generated_files/flags/default/41831495ad42389701896662cfdefabb7cb8691 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TWI.o.d 
	@${RM} ${OBJECTDIR}/TWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/TWI.o.d" -MT "${OBJECTDIR}/TWI.o.d" -MT ${OBJECTDIR}/TWI.o -o ${OBJECTDIR}/TWI.o TWI.c 
	
${OBJECTDIR}/AT24C16B.o: AT24C16B.c  .generated_files/flags/default/20abb67519d7a252754d6f847882ab4009f6e466 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AT24C16B.o.d 
	@${RM} ${OBJECTDIR}/AT24C16B.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/AT24C16B.o.d" -MT "${OBJECTDIR}/AT24C16B.o.d" -MT ${OBJECTDIR}/AT24C16B.o -o ${OBJECTDIR}/AT24C16B.o AT24C16B.c 
	
${OBJECTDIR}/myfreertos/croutine.o: myfreertos/croutine.c  .generated_files/flags/default/1d786c01224ceff713b7cb844c0e50bdf4f14b52 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/croutine.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/croutine.o.d" -MT "${OBJECTDIR}/myfreertos/croutine.o.d" -MT ${OBJECTDIR}/myfreertos/croutine.o -o ${OBJECTDIR}/myfreertos/croutine.o myfreertos/croutine.c 
	
${OBJECTDIR}/myfreertos/event_groups.o: myfreertos/event_groups.c  .generated_files/flags/default/a0b2e7b62006029a14069d7e7d6a18622055025e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/event_groups.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/event_groups.o.d" -MT "${OBJECTDIR}/myfreertos/event_groups.o.d" -MT ${OBJECTDIR}/myfreertos/event_groups.o -o ${OBJECTDIR}/myfreertos/event_groups.o myfreertos/event_groups.c 
	
${OBJECTDIR}/myfreertos/heap_4.o: myfreertos/heap_4.c  .generated_files/flags/default/99e805269c8d20acb951c29ba5548e175abcf46c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/heap_4.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/heap_4.o.d" -MT "${OBJECTDIR}/myfreertos/heap_4.o.d" -MT ${OBJECTDIR}/myfreertos/heap_4.o -o ${OBJECTDIR}/myfreertos/heap_4.o myfreertos/heap_4.c 
	
${OBJECTDIR}/myfreertos/list.o: myfreertos/list.c  .generated_files/flags/default/8964dcc5906a2e98d84e21d9309c1a2db008aba8 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/list.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/list.o.d" -MT "${OBJECTDIR}/myfreertos/list.o.d" -MT ${OBJECTDIR}/myfreertos/list.o -o ${OBJECTDIR}/myfreertos/list.o myfreertos/list.c 
	
${OBJECTDIR}/myfreertos/port.o: myfreertos/port.c  .generated_files/flags/default/4099ece717e74ca07581c38ef62f9d21ab16fcb4 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/port.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/port.o.d" -MT "${OBJECTDIR}/myfreertos/port.o.d" -MT ${OBJECTDIR}/myfreertos/port.o -o ${OBJECTDIR}/myfreertos/port.o myfreertos/port.c 
	
${OBJECTDIR}/myfreertos/queue.o: myfreertos/queue.c  .generated_files/flags/default/4aba82ceb5d72a0d30b5dd136f600b7cbbcc42ce .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/queue.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/queue.o.d" -MT "${OBJECTDIR}/myfreertos/queue.o.d" -MT ${OBJECTDIR}/myfreertos/queue.o -o ${OBJECTDIR}/myfreertos/queue.o myfreertos/queue.c 
	
${OBJECTDIR}/myfreertos/stream_buffer.o: myfreertos/stream_buffer.c  .generated_files/flags/default/8ddd65387253119962835fab53562a9288717102 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/stream_buffer.o.d" -MT "${OBJECTDIR}/myfreertos/stream_buffer.o.d" -MT ${OBJECTDIR}/myfreertos/stream_buffer.o -o ${OBJECTDIR}/myfreertos/stream_buffer.o myfreertos/stream_buffer.c 
	
${OBJECTDIR}/myfreertos/tasks.o: myfreertos/tasks.c  .generated_files/flags/default/53aaacbbc0667709ff635b3900b66eb19e8d26a5 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/tasks.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/tasks.o.d" -MT "${OBJECTDIR}/myfreertos/tasks.o.d" -MT ${OBJECTDIR}/myfreertos/tasks.o -o ${OBJECTDIR}/myfreertos/tasks.o myfreertos/tasks.c 
	
${OBJECTDIR}/myfreertos/timers.o: myfreertos/timers.c  .generated_files/flags/default/b44bd52ff64bdce3027b6bea4f59b53d7c3d8dbd .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/timers.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/timers.o.d" -MT "${OBJECTDIR}/myfreertos/timers.o.d" -MT ${OBJECTDIR}/myfreertos/timers.o -o ${OBJECTDIR}/myfreertos/timers.o myfreertos/timers.c 
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/3ced5658ff3ce8082de9a2a39d20c7c9b5454d68 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/DIO.o: DIO.c  .generated_files/flags/default/2adcb862df45fe623e80dbeaee43baeba7a03074 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DIO.o.d 
	@${RM} ${OBJECTDIR}/DIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/DIO.o.d" -MT "${OBJECTDIR}/DIO.o.d" -MT ${OBJECTDIR}/DIO.o -o ${OBJECTDIR}/DIO.o DIO.c 
	
${OBJECTDIR}/Buzzer.o: Buzzer.c  .generated_files/flags/default/8f16977c23c204bdc5a51a57e7d9d81d2b67ae7e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Buzzer.o.d 
	@${RM} ${OBJECTDIR}/Buzzer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Buzzer.o.d" -MT "${OBJECTDIR}/Buzzer.o.d" -MT ${OBJECTDIR}/Buzzer.o -o ${OBJECTDIR}/Buzzer.o Buzzer.c 
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/aabe75beb84645f864f89cb6086923a799e44b6e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LED.o.d" -MT "${OBJECTDIR}/LED.o.d" -MT ${OBJECTDIR}/LED.o -o ${OBJECTDIR}/LED.o LED.c 
	
${OBJECTDIR}/VButtons.o: VButtons.c  .generated_files/flags/default/4c72ab46dda254f630a8e5ebb135d0cbb706031 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/VButtons.o.d 
	@${RM} ${OBJECTDIR}/VButtons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/VButtons.o.d" -MT "${OBJECTDIR}/VButtons.o.d" -MT ${OBJECTDIR}/VButtons.o -o ${OBJECTDIR}/VButtons.o VButtons.c 
	
${OBJECTDIR}/_7SEG.o: _7SEG.c  .generated_files/flags/default/8ef98f4e716d4ee90f397a76c39dcf7a759d56ce .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/_7SEG.o.d 
	@${RM} ${OBJECTDIR}/_7SEG.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/_7SEG.o.d" -MT "${OBJECTDIR}/_7SEG.o.d" -MT ${OBJECTDIR}/_7SEG.o -o ${OBJECTDIR}/_7SEG.o _7SEG.c 
	
${OBJECTDIR}/LCD8.o: LCD8.c  .generated_files/flags/default/65e9eca43ee6ba6b6aef755ee6de303681182e9a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD8.o.d 
	@${RM} ${OBJECTDIR}/LCD8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LCD8.o.d" -MT "${OBJECTDIR}/LCD8.o.d" -MT ${OBJECTDIR}/LCD8.o -o ${OBJECTDIR}/LCD8.o LCD8.c 
	
${OBJECTDIR}/LCD4.o: LCD4.c  .generated_files/flags/default/8ccdba09b41bf5d4bcc233be91e0574985d9b569 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD4.o.d 
	@${RM} ${OBJECTDIR}/LCD4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LCD4.o.d" -MT "${OBJECTDIR}/LCD4.o.d" -MT ${OBJECTDIR}/LCD4.o -o ${OBJECTDIR}/LCD4.o LCD4.c 
	
${OBJECTDIR}/Button.o: Button.c  .generated_files/flags/default/9df50dc4b64f8e4aea5ac681409c4ea5a8680e5e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Button.o.d 
	@${RM} ${OBJECTDIR}/Button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Button.o.d" -MT "${OBJECTDIR}/Button.o.d" -MT ${OBJECTDIR}/Button.o -o ${OBJECTDIR}/Button.o Button.c 
	
${OBJECTDIR}/keypad.o: keypad.c  .generated_files/flags/default/73911f0a91979f5f8e49b6495f548db08cb2f4c1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keypad.o.d 
	@${RM} ${OBJECTDIR}/keypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/keypad.o.d" -MT "${OBJECTDIR}/keypad.o.d" -MT ${OBJECTDIR}/keypad.o -o ${OBJECTDIR}/keypad.o keypad.c 
	
${OBJECTDIR}/EXT_INT.o: EXT_INT.c  .generated_files/flags/default/e7a42614c3b322a04d02309dff4446e8617e91c4 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EXT_INT.o.d 
	@${RM} ${OBJECTDIR}/EXT_INT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EXT_INT.o.d" -MT "${OBJECTDIR}/EXT_INT.o.d" -MT ${OBJECTDIR}/EXT_INT.o -o ${OBJECTDIR}/EXT_INT.o EXT_INT.c 
	
${OBJECTDIR}/ADC.o: ADC.c  .generated_files/flags/default/22a2233bb007210b4c6ffa845c85d85f28d96afa .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADC.o.d 
	@${RM} ${OBJECTDIR}/ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/ADC.o.d" -MT "${OBJECTDIR}/ADC.o.d" -MT ${OBJECTDIR}/ADC.o -o ${OBJECTDIR}/ADC.o ADC.c 
	
${OBJECTDIR}/LM35.o: LM35.c  .generated_files/flags/default/127d7bc1fd0967c4dbbb8466227e89d12201b8c9 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LM35.o.d 
	@${RM} ${OBJECTDIR}/LM35.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/LM35.o.d" -MT "${OBJECTDIR}/LM35.o.d" -MT ${OBJECTDIR}/LM35.o -o ${OBJECTDIR}/LM35.o LM35.c 
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/46eb87678a52f6d4aa8a094631ec119a2a476f79 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/timers.o.d" -MT "${OBJECTDIR}/timers.o.d" -MT ${OBJECTDIR}/timers.o -o ${OBJECTDIR}/timers.o timers.c 
	
${OBJECTDIR}/UART.o: UART.c  .generated_files/flags/default/a5688d8de07af89e19640730aa7601131958ce1c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/UART.o.d" -MT "${OBJECTDIR}/UART.o.d" -MT ${OBJECTDIR}/UART.o -o ${OBJECTDIR}/UART.o UART.c 
	
${OBJECTDIR}/SPI.o: SPI.c  .generated_files/flags/default/17b2294135dc4ea791e913c72cae41e8c9c07767 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/SPI.o.d 
	@${RM} ${OBJECTDIR}/SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/SPI.o.d" -MT "${OBJECTDIR}/SPI.o.d" -MT ${OBJECTDIR}/SPI.o -o ${OBJECTDIR}/SPI.o SPI.c 
	
${OBJECTDIR}/25AA020A.o: 25AA020A.c  .generated_files/flags/default/6143f2849697a7dc5ff592fabe0ef0a17208403f .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/25AA020A.o.d 
	@${RM} ${OBJECTDIR}/25AA020A.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/25AA020A.o.d" -MT "${OBJECTDIR}/25AA020A.o.d" -MT ${OBJECTDIR}/25AA020A.o -o ${OBJECTDIR}/25AA020A.o 25AA020A.c 
	
${OBJECTDIR}/TWI.o: TWI.c  .generated_files/flags/default/b1d045c7f552a08f0626748915f159ebb95d4f4e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TWI.o.d 
	@${RM} ${OBJECTDIR}/TWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/TWI.o.d" -MT "${OBJECTDIR}/TWI.o.d" -MT ${OBJECTDIR}/TWI.o -o ${OBJECTDIR}/TWI.o TWI.c 
	
${OBJECTDIR}/AT24C16B.o: AT24C16B.c  .generated_files/flags/default/d716b787bd625bc6396a67a017feb3b05b401878 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AT24C16B.o.d 
	@${RM} ${OBJECTDIR}/AT24C16B.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/AT24C16B.o.d" -MT "${OBJECTDIR}/AT24C16B.o.d" -MT ${OBJECTDIR}/AT24C16B.o -o ${OBJECTDIR}/AT24C16B.o AT24C16B.c 
	
${OBJECTDIR}/myfreertos/croutine.o: myfreertos/croutine.c  .generated_files/flags/default/de33bde53ef282b90b0c50bdc92490ca1489302f .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/croutine.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/croutine.o.d" -MT "${OBJECTDIR}/myfreertos/croutine.o.d" -MT ${OBJECTDIR}/myfreertos/croutine.o -o ${OBJECTDIR}/myfreertos/croutine.o myfreertos/croutine.c 
	
${OBJECTDIR}/myfreertos/event_groups.o: myfreertos/event_groups.c  .generated_files/flags/default/717219ce1209601f011163156141c22ff866e94 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/event_groups.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/event_groups.o.d" -MT "${OBJECTDIR}/myfreertos/event_groups.o.d" -MT ${OBJECTDIR}/myfreertos/event_groups.o -o ${OBJECTDIR}/myfreertos/event_groups.o myfreertos/event_groups.c 
	
${OBJECTDIR}/myfreertos/heap_4.o: myfreertos/heap_4.c  .generated_files/flags/default/936ce27058145ba73b9f055a133e3929e6d52383 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/heap_4.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/heap_4.o.d" -MT "${OBJECTDIR}/myfreertos/heap_4.o.d" -MT ${OBJECTDIR}/myfreertos/heap_4.o -o ${OBJECTDIR}/myfreertos/heap_4.o myfreertos/heap_4.c 
	
${OBJECTDIR}/myfreertos/list.o: myfreertos/list.c  .generated_files/flags/default/e37dbff9f737980c92bd3cc84a6a442be3e34e5f .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/list.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/list.o.d" -MT "${OBJECTDIR}/myfreertos/list.o.d" -MT ${OBJECTDIR}/myfreertos/list.o -o ${OBJECTDIR}/myfreertos/list.o myfreertos/list.c 
	
${OBJECTDIR}/myfreertos/port.o: myfreertos/port.c  .generated_files/flags/default/ce9737f095df0b58bfeadacddba6f1c0d1053690 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/port.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/port.o.d" -MT "${OBJECTDIR}/myfreertos/port.o.d" -MT ${OBJECTDIR}/myfreertos/port.o -o ${OBJECTDIR}/myfreertos/port.o myfreertos/port.c 
	
${OBJECTDIR}/myfreertos/queue.o: myfreertos/queue.c  .generated_files/flags/default/78136d02c8c6624a84427cf817cb05543beae518 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/queue.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/queue.o.d" -MT "${OBJECTDIR}/myfreertos/queue.o.d" -MT ${OBJECTDIR}/myfreertos/queue.o -o ${OBJECTDIR}/myfreertos/queue.o myfreertos/queue.c 
	
${OBJECTDIR}/myfreertos/stream_buffer.o: myfreertos/stream_buffer.c  .generated_files/flags/default/a7a247637c3638fb4aa14d30d977c53318f70c0b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/stream_buffer.o.d" -MT "${OBJECTDIR}/myfreertos/stream_buffer.o.d" -MT ${OBJECTDIR}/myfreertos/stream_buffer.o -o ${OBJECTDIR}/myfreertos/stream_buffer.o myfreertos/stream_buffer.c 
	
${OBJECTDIR}/myfreertos/tasks.o: myfreertos/tasks.c  .generated_files/flags/default/c528932063d068dcc0e9eacff788a7d403ec8ac5 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/tasks.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/tasks.o.d" -MT "${OBJECTDIR}/myfreertos/tasks.o.d" -MT ${OBJECTDIR}/myfreertos/tasks.o -o ${OBJECTDIR}/myfreertos/tasks.o myfreertos/tasks.c 
	
${OBJECTDIR}/myfreertos/timers.o: myfreertos/timers.c  .generated_files/flags/default/a688fecddfed46c88d85366f875be41ae70d993 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/myfreertos" 
	@${RM} ${OBJECTDIR}/myfreertos/timers.o.d 
	@${RM} ${OBJECTDIR}/myfreertos/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myfreertos/timers.o.d" -MT "${OBJECTDIR}/myfreertos/timers.o.d" -MT ${OBJECTDIR}/myfreertos/timers.o -o ${OBJECTDIR}/myfreertos/timers.o myfreertos/timers.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/Alex53.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
