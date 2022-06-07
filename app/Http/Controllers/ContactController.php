<?php

namespace App\Http\Controllers;

use App\Mail\ContactReply;
use App\Models\Contact;
use App\Models\ContactUs;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Yajra\DataTables\Facades\DataTables;

class ContactController extends Controller
{


    public function index()
    {
        return view('contactus.index',['contact'=>Contact::all() ]);
    }


    public function reply($id)
    {
        return view('contactus.reply', ['contact_us'=>Contact::find($id)]);
    }


        public function sendReply(Request $request, $id)
    {
        $contact = Contact::findOrFail($id);
        $contact->is_replied = 1;
        $contact->save();
        try {
            Mail::to($contact->email)->send(new ContactReply($contact, $request->reply));
        } catch (\Exception $exception) {
            //
        }
        return redirect(route('contactus.index'));
    }//..... end of sendReply() .....//


//    public function sendReply($id)
//    {
//        $date =request()->only(['name','email','phone','message']);
//        Contact::where('id',$id)->update($date);
//        return redirect()->route('contactus.index');
//
//        }


        public function delete($id)
    {
        Contact::destroy($id);
        return redirect()->route('contactus.index');
    }



    public function list()
    {
        return DataTables::of(Contact::query())
            ->addColumn('replied', function ($q) {
                  if($q->is_replied)
                          return 'Yes';
                  else
                        return  'No';
            })
            ->addColumn('actions', function ($q) {
                return '<a class="btn btn-primary" href="'.route('contactus.reply',$q->id).'">Reply</a>
                         <a class="btn btn-reddit deleteContact" href="'.route('contactus.delete',$q->id).'">Delete</a> ';
            })

            ->rawColumns(['actions'])
            ->make(true);
    }
}
