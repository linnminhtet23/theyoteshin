
import 'package:rxdart/rxdart.dart';
import 'package:the_yoteshin/model/person_response.dart';
import 'package:the_yoteshin/repository/repository.dart';

class PersonsListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonResponse> _subject =
      BehaviorSubject<PersonResponse>();

  getPersons() async {
    PersonResponse response = await _repository.getPersons();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<PersonResponse> get subject => _subject;
  
}
final personsBloc = PersonsListBloc();