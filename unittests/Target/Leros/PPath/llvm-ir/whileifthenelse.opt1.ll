; ModuleID = 'whileifthenelse.c'
source_filename = "whileifthenelse.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "leros32-unknown-unknown-elf"

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = tail call i32 @rand() #2
  %2 = icmp slt i32 %1, 100
  br i1 %2, label %3, label %10

; <label>:3:                                      ; preds = %0, %3
  %4 = phi i32 [ %8, %3 ], [ %1, %0 ]
  %5 = icmp slt i32 %4, 50
  %6 = zext i1 %5 to i32
  %7 = shl i32 %4, %6
  %8 = add i32 %7, 2
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %3, label %10

; <label>:10:                                     ; preds = %3, %0
  %11 = phi i32 [ %1, %0 ], [ %8, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (https://github.com/leros-dev/leros-clang.git ba93d76b060e90d82b2f3f3ccc6488c308790562) (https://github.com/leros-dev/leros-llvm.git 7ea1af6a830f9ec7969d7347feaffeca60a0770f)"}
