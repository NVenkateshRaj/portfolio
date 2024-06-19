import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venkatesh/bloc/portfolio_events.dart';
import 'package:venkatesh/bloc/portfolio_state.dart';
import 'package:firebase_database/firebase_database.dart';

class PortfolioBloc extends Bloc<PortfolioEvents,PortfolioState>{

  bool isLoading = false;

  DatabaseReference database = FirebaseDatabase.instance.ref("portfolio");
  PortfolioBloc():super(PortfolioInitState()){
    on((event,emit)async{
      if(event == PortfolioEvents.fetchDetails){
        await fetchData(emit);
      }
    });
  }



  fetchData(Emitter<PortfolioState> emit)async{
    isLoading = true;

    final res = await database.get();
    // portfolio = Portfolio.fromJson(jsonDecode(jsonEncode(res.value)));
    // if(portfolio!=null){
    //   print(portfolio!.toJson());
    // }
    isLoading = false;
  }
}