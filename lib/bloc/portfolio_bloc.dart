import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venkatesh/bloc/portfolio_events.dart';
import 'package:venkatesh/bloc/portfolio_state.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:venkatesh/model/profile_details.dart';

class PortfolioBloc extends Bloc<PortfolioEvents,PortfolioState>{

  bool isLoading = false;

  DatabaseReference database = FirebaseDatabase.instance.ref("portfolio");
  ProfileDetails? profileDetails;


  PortfolioBloc():super(PortfolioInitState()){
    on((event,emit)async{
      if(event == PortfolioEvents.fetchDetails){
        await fetchData(emit);
      }
    });
  }



  fetchData(Emitter<PortfolioState> emit)async{
    isLoading = true;
    emit(PortfolioErrorState());
    try{

      final res = await database.get();
      profileDetails = ProfileDetails.fromJson(jsonDecode(jsonEncode(res.value)));
      emit(PortfolioLoadingState());
      if(profileDetails!=null){
        emit(PortfolioListState(profileDetails: profileDetails!));
      }
      isLoading = false;
    }catch(e){
      emit(PortfolioErrorState());
      isLoading = false;
    }
  }
}