define internal %String* @Microsoft__Quantum__Testing__QIR__TestStrings__body(i64 %a, i64 %b, %Array* %arr) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %arr, i32 1)
  %0 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @0, i32 0, i32 0))
  %1 = call %String* @__quantum__rt__int_to_string(i64 %a)
  %2 = call %String* @__quantum__rt__string_concatenate(%String* %0, %String* %1)
  call void @__quantum__rt__string_update_reference_count(%String* %0, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %1, i32 -1)
  %3 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  %x = call %String* @__quantum__rt__string_concatenate(%String* %2, %String* %3)
  call void @__quantum__rt__string_update_reference_count(%String* %2, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %3, i32 -1)
  %4 = add i64 %a, %b
  %5 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0))
  %6 = call %String* @__quantum__rt__int_to_string(i64 %4)
  %y = call %String* @__quantum__rt__string_concatenate(%String* %5, %String* %6)
  call void @__quantum__rt__string_update_reference_count(%String* %5, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %6, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %y, i32 1)
  %7 = load i2, i2* @PauliX, align 1
  %8 = call %Result* @__quantum__rt__result_get_one()
  %9 = call %BigInt* @__quantum__rt__bigint_create_i64(i64 1)
  %10 = load %Range, %Range* @EmptyRange, align 4
  %11 = insertvalue %Range %10, i64 0, 0
  %12 = insertvalue %Range %11, i64 1, 1
  %13 = insertvalue %Range %12, i64 3, 2
  %14 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0))
  %15 = call %String* @__quantum__rt__double_to_string(double 1.200000e+00)
  %16 = call %String* @__quantum__rt__string_concatenate(%String* %14, %String* %15)
  call void @__quantum__rt__string_update_reference_count(%String* %14, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %15, i32 -1)
  %17 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @4, i32 0, i32 0))
  %18 = call %String* @__quantum__rt__string_concatenate(%String* %16, %String* %17)
  call void @__quantum__rt__string_update_reference_count(%String* %16, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %17, i32 -1)
  %19 = call %String* @__quantum__rt__bool_to_string(i1 true)
  %20 = call %String* @__quantum__rt__string_concatenate(%String* %18, %String* %19)
  call void @__quantum__rt__string_update_reference_count(%String* %18, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %19, i32 -1)
  %21 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0))
  %22 = call %String* @__quantum__rt__string_concatenate(%String* %20, %String* %21)
  call void @__quantum__rt__string_update_reference_count(%String* %20, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %21, i32 -1)
  %23 = call %String* @__quantum__rt__pauli_to_string(i2 %7)
  %24 = call %String* @__quantum__rt__string_concatenate(%String* %22, %String* %23)
  call void @__quantum__rt__string_update_reference_count(%String* %22, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %23, i32 -1)
  %25 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0))
  %26 = call %String* @__quantum__rt__string_concatenate(%String* %24, %String* %25)
  call void @__quantum__rt__string_update_reference_count(%String* %24, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %25, i32 -1)
  %27 = call %String* @__quantum__rt__result_to_string(%Result* %8)
  %28 = call %String* @__quantum__rt__string_concatenate(%String* %26, %String* %27)
  call void @__quantum__rt__string_update_reference_count(%String* %26, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %27, i32 -1)
  %29 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0))
  %30 = call %String* @__quantum__rt__string_concatenate(%String* %28, %String* %29)
  call void @__quantum__rt__string_update_reference_count(%String* %28, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %29, i32 -1)
  %31 = call %String* @__quantum__rt__bigint_to_string(%BigInt* %9)
  %32 = call %String* @__quantum__rt__string_concatenate(%String* %30, %String* %31)
  call void @__quantum__rt__string_update_reference_count(%String* %30, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %31, i32 -1)
  %33 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0))
  %34 = call %String* @__quantum__rt__string_concatenate(%String* %32, %String* %33)
  call void @__quantum__rt__string_update_reference_count(%String* %32, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %33, i32 -1)
  %35 = call %String* @__quantum__rt__range_to_string(%Range %13)
  %i = call %String* @__quantum__rt__string_concatenate(%String* %34, %String* %35)
  call void @__quantum__rt__string_update_reference_count(%String* %34, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %35, i32 -1)
  %36 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @9, i32 0, i32 0))
  %37 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0))
  call void @__quantum__rt__string_update_reference_count(%String* %37, i32 1)
  %38 = call i64 @__quantum__rt__array_get_size_1d(%Array* %arr)
  %39 = sub i64 %38, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %40 = phi %String* [ %37, %entry ], [ %50, %exiting__1 ]
  %41 = phi i64 [ 0, %entry ], [ %51, %exiting__1 ]
  %42 = icmp sle i64 %41, %39
  br i1 %42, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %43 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %arr, i64 %41)
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = icmp ne %String* %40, %37
  br i1 %46, label %condTrue__1, label %condContinue__1

condTrue__1:                                      ; preds = %body__1
  %47 = call %String* @__quantum__rt__string_concatenate(%String* %40, %String* %36)
  call void @__quantum__rt__string_update_reference_count(%String* %40, i32 -1)
  br label %condContinue__1

condContinue__1:                                  ; preds = %condTrue__1, %body__1
  %48 = phi %String* [ %47, %condTrue__1 ], [ %40, %body__1 ]
  %49 = call %String* @__quantum__rt__int_to_string(i64 %45)
  %50 = call %String* @__quantum__rt__string_concatenate(%String* %48, %String* %49)
  call void @__quantum__rt__string_update_reference_count(%String* %48, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %49, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %condContinue__1
  %51 = add i64 %41, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  %52 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0))
  %data = call %String* @__quantum__rt__string_concatenate(%String* %40, %String* %52)
  call void @__quantum__rt__string_update_reference_count(%String* %40, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %52, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %36, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %37, i32 -1)
  %53 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @12, i32 0, i32 0))
  call void @__quantum__rt__string_update_reference_count(%String* %x, i32 1)
  %res = call %String* @__quantum__rt__string_concatenate(%String* %53, %String* %x)
  call void @__quantum__rt__string_update_reference_count(%String* %53, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %x, i32 -1)
  %54 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @13, i32 0, i32 0))
  %defaultArr = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %55 = phi i64 [ 0, %exit__1 ], [ %59, %exiting__2 ]
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %57 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %defaultArr, i64 %55)
  %58 = bitcast i8* %57 to %String**
  store %String* %54, %String** %58, align 8
  call void @__quantum__rt__string_update_reference_count(%String* %54, i32 1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %59 = add i64 %55, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  call void @__quantum__rt__array_update_alias_count(%Array* %defaultArr, i32 1)
  %60 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @14, i32 0, i32 0))
  %strArr = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  br label %header__3

header__3:                                        ; preds = %exiting__3, %exit__2
  %61 = phi i64 [ 0, %exit__2 ], [ %65, %exiting__3 ]
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %63 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %strArr, i64 %61)
  %64 = bitcast i8* %63 to %String**
  store %String* %60, %String** %64, align 8
  call void @__quantum__rt__string_update_reference_count(%String* %60, i32 1)
  br label %exiting__3

exiting__3:                                       ; preds = %body__3
  %65 = add i64 %61, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  call void @__quantum__rt__array_update_alias_count(%Array* %strArr, i32 1)
  %66 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @15, i32 0, i32 0))
  call void @__quantum__rt__array_update_alias_count(%Array* %arr, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %defaultArr, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %strArr, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %x, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %y, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %y, i32 -1)
  call void @__quantum__rt__bigint_update_reference_count(%BigInt* %9, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %i, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %data, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %res, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %54, i32 -1)
  br label %header__4

header__4:                                        ; preds = %exiting__4, %exit__3
  %67 = phi i64 [ 0, %exit__3 ], [ %72, %exiting__4 ]
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %body__4, label %exit__4

body__4:                                          ; preds = %header__4
  %69 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %defaultArr, i64 %67)
  %70 = bitcast i8* %69 to %String**
  %71 = load %String*, %String** %70, align 8
  call void @__quantum__rt__string_update_reference_count(%String* %71, i32 -1)
  br label %exiting__4

exiting__4:                                       ; preds = %body__4
  %72 = add i64 %67, 1
  br label %header__4

exit__4:                                          ; preds = %header__4
  call void @__quantum__rt__array_update_reference_count(%Array* %defaultArr, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %60, i32 -1)
  br label %header__5

header__5:                                        ; preds = %exiting__5, %exit__4
  %73 = phi i64 [ 0, %exit__4 ], [ %78, %exiting__5 ]
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %body__5, label %exit__5

body__5:                                          ; preds = %header__5
  %75 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %strArr, i64 %73)
  %76 = bitcast i8* %75 to %String**
  %77 = load %String*, %String** %76, align 8
  call void @__quantum__rt__string_update_reference_count(%String* %77, i32 -1)
  br label %exiting__5

exiting__5:                                       ; preds = %body__5
  %78 = add i64 %73, 1
  br label %header__5

exit__5:                                          ; preds = %header__5
  call void @__quantum__rt__array_update_reference_count(%Array* %strArr, i32 -1)
  ret %String* %66
}
