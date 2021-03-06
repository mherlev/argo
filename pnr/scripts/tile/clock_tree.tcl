

setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -preCTS

setCTSMode -optAddBuffer true -useLibMaxCap true -powerAware true

#set_propagated_clock clk

specifyClockTree -file scripts/Clock_relaxed.ctstch

deleteClockTree -all

deleteAllCellPad

setPlaceMode -padForPinNearBorder 0

clockDesign -specFile scripts/Clock_relaxed.ctstch

deleteTrialRoute
