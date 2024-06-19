import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venkatesh/bloc/portfolio_bloc.dart';
import 'package:venkatesh/bloc/portfolio_events.dart';
import 'package:venkatesh/bloc/portfolio_state.dart';
import 'package:venkatesh/constants/colors.dart';
import 'package:venkatesh/model/profile_details.dart';
import 'package:venkatesh/widgets/web_app_bar.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});
  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {

  ProfileDetails? profileDetails;
  PortfolioBloc? portFolioBloc;

  @override
  void initState() {
    portFolioBloc = BlocProvider.of<PortfolioBloc>(context);
    portFolioBloc!.add(PortfolioEvents.fetchDetails);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PortfolioBloc,PortfolioState>(builder: (BuildContext context,PortfolioState state){
      if(state is PortfolioListState){
        profileDetails = state.profileDetails;
      }
      return Scaffold(
        backgroundColor: kBlack,
        appBar: WebAppBarWidget(),
        body: Column(
          children: [

          ],
        ),
      );
    });

  }
}