import 'package:carwashing/core/utils/app_colors.dart';
import 'package:carwashing/core/utils/app_text_style.dart';
import 'package:carwashing/core/widgets/custom_btn.dart';
import 'package:carwashing/features/standered_wash/presentation/cubit/date_time_cubit.dart';
import 'package:carwashing/features/standered_wash/presentation/widgets/custom_appbar_standard.dart';
import 'package:carwashing/features/standered_wash/presentation/widgets/custom_list_title.dart';
import 'package:carwashing/features/standered_wash/presentation/widgets/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 140.h,
        backgroundColor: Colors.white,
        centerTitle: true,
       
        title:const 
       standered_screens(title: 'Standard wash', subTitle: 'Overview',),
        
       
        ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomSliderThem(indexTop: 2,),),
          SliverToBoxAdapter(child: SizedBox(height: 10.h,),),
          SliverToBoxAdapter(child:  Padding(
      padding: const EdgeInsets.only(top: 6,right: 30,left: 30,bottom: 0),
      child: Text('standard wash',style: CustomTextStyle.poppins500style18.copyWith(color: AppColors.primaryColor),),)),
          SliverToBoxAdapter(child: SizedBox(height: 10.h,),),
          SliverToBoxAdapter(child:CustomListTitle(icon: Icons.calendar_view_day, text: 'Date and time:',trallingText: '${context.read<DateTimeCubit>().timePicker.text} ${context.read<DateTimeCubit>().datePicker.text}',) ,),
         const SliverToBoxAdapter(child:CustomListTitle(icon: Icons.location_city, text: 'Location:',trallingText: ' new_damitta',) ,),
         const SliverToBoxAdapter(child:CustomListTitle(icon: Icons.calendar_view_day, text: 'payment_method:',trallingText: 'Apple pay',) ,),
          const SliverToBoxAdapter(child: Divider(indent: 10,endIndent: 10,thickness: 5,),),
          SliverToBoxAdapter(child: SizedBox(height: 200.h,),),
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Text('price:',style: CustomTextStyle.poppins500style18.copyWith(color: AppColors.primaryColor),),Text('155',style: CustomTextStyle.poppins500style18.copyWith(color: AppColors.primaryColor),)]),
          ),),
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Text('Loyality clubdiscount:',style: CustomTextStyle.poppins500style18.copyWith(color: AppColors.primaryColor),),Text('0%',style: CustomTextStyle.poppins500style18.copyWith(color: AppColors.primaryColor),)]),
          ),),
          const SliverToBoxAdapter(child: Divider(indent: 10,endIndent: 10,thickness: 5,),),
         SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Text('Total:',style: CustomTextStyle.pacifico600style24.copyWith(color: AppColors.primaryColor),),Text('15\$',style: CustomTextStyle.pacifico600style24.copyWith(color: AppColors.amperColor),)]),
          ),),
          SliverToBoxAdapter(child: Padding(
           padding: const EdgeInsets.all(30),
           child: CustomBtn(text: 'Book now ',color: AppColors.amperColor,onPressed: () {
                         
                        },),
         ),)
        ])
      
      );
  }
}

