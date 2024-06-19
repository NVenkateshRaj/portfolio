import 'package:equatable/equatable.dart';
import 'package:venkatesh/model/profile_details.dart';

abstract class PortfolioState extends Equatable{
  @override
  List<Object?> get props => [];
}

class PortfolioInitState extends PortfolioState{}

class PortfolioLoadingState extends PortfolioState{}

class PortfolioErrorState extends PortfolioState{}

class PortfolioListState extends PortfolioState{
  final ProfileDetails profileDetails;
  PortfolioListState(this.profileDetails);
}