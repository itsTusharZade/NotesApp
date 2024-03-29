#if 0
#elif defined(__arm64__) && __arm64__
// Generated by Apple Swift version 5.9 (swiftlang-5.9.0.128.108 clang-1500.0.40.1)
#ifndef TECHEXACTLY_TASK_SWIFT_H
#define TECHEXACTLY_TASK_SWIFT_H
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#if defined(__OBJC__)
#include <Foundation/Foundation.h>
#endif
#if defined(__cplusplus)
#include <cstdint>
#include <cstddef>
#include <cstdbool>
#include <cstring>
#include <stdlib.h>
#include <new>
#include <type_traits>
#else
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <string.h>
#endif
#if defined(__cplusplus)
#if defined(__arm64e__) && __has_include(<ptrauth.h>)
# include <ptrauth.h>
#else
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wreserved-macro-identifier"
# ifndef __ptrauth_swift_value_witness_function_pointer
#  define __ptrauth_swift_value_witness_function_pointer(x)
# endif
# ifndef __ptrauth_swift_class_method_pointer
#  define __ptrauth_swift_class_method_pointer(x)
# endif
#pragma clang diagnostic pop
#endif
#endif

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...) 
# endif
#endif
#if !defined(SWIFT_RUNTIME_NAME)
# if __has_attribute(objc_runtime_name)
#  define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
# else
#  define SWIFT_RUNTIME_NAME(X) 
# endif
#endif
#if !defined(SWIFT_COMPILE_NAME)
# if __has_attribute(swift_name)
#  define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
# else
#  define SWIFT_COMPILE_NAME(X) 
# endif
#endif
#if !defined(SWIFT_METHOD_FAMILY)
# if __has_attribute(objc_method_family)
#  define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
# else
#  define SWIFT_METHOD_FAMILY(X) 
# endif
#endif
#if !defined(SWIFT_NOESCAPE)
# if __has_attribute(noescape)
#  define SWIFT_NOESCAPE __attribute__((noescape))
# else
#  define SWIFT_NOESCAPE 
# endif
#endif
#if !defined(SWIFT_RELEASES_ARGUMENT)
# if __has_attribute(ns_consumed)
#  define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
# else
#  define SWIFT_RELEASES_ARGUMENT 
# endif
#endif
#if !defined(SWIFT_WARN_UNUSED_RESULT)
# if __has_attribute(warn_unused_result)
#  define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
# else
#  define SWIFT_WARN_UNUSED_RESULT 
# endif
#endif
#if !defined(SWIFT_NORETURN)
# if __has_attribute(noreturn)
#  define SWIFT_NORETURN __attribute__((noreturn))
# else
#  define SWIFT_NORETURN 
# endif
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA 
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA 
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA 
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
# endif
#endif
#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif
#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER 
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility) 
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED_OBJC)
# if __has_feature(attribute_diagnose_if_objc)
#  define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
# else
#  define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
# endif
#endif
#if defined(__OBJC__)
#if !defined(IBSegueAction)
# define IBSegueAction 
#endif
#endif
#if !defined(SWIFT_EXTERN)
# if defined(__cplusplus)
#  define SWIFT_EXTERN extern "C"
# else
#  define SWIFT_EXTERN extern
# endif
#endif
#if !defined(SWIFT_CALL)
# define SWIFT_CALL __attribute__((swiftcall))
#endif
#if !defined(SWIFT_INDIRECT_RESULT)
# define SWIFT_INDIRECT_RESULT __attribute__((swift_indirect_result))
#endif
#if !defined(SWIFT_CONTEXT)
# define SWIFT_CONTEXT __attribute__((swift_context))
#endif
#if !defined(SWIFT_ERROR_RESULT)
# define SWIFT_ERROR_RESULT __attribute__((swift_error_result))
#endif
#if defined(__cplusplus)
# define SWIFT_NOEXCEPT noexcept
#else
# define SWIFT_NOEXCEPT 
#endif
#if !defined(SWIFT_C_INLINE_THUNK)
# if __has_attribute(always_inline)
# if __has_attribute(nodebug)
#  define SWIFT_C_INLINE_THUNK inline __attribute__((always_inline)) __attribute__((nodebug))
# else
#  define SWIFT_C_INLINE_THUNK inline __attribute__((always_inline))
# endif
# else
#  define SWIFT_C_INLINE_THUNK inline
# endif
#endif
#if defined(_WIN32)
#if !defined(SWIFT_IMPORT_STDLIB_SYMBOL)
# define SWIFT_IMPORT_STDLIB_SYMBOL __declspec(dllimport)
#endif
#else
#if !defined(SWIFT_IMPORT_STDLIB_SYMBOL)
# define SWIFT_IMPORT_STDLIB_SYMBOL 
#endif
#endif
#if defined(__OBJC__)
#if __has_feature(objc_modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import CoreData;
@import CoreFoundation;
@import Foundation;
@import UIKit;
@import WebKit;
#endif

#endif
#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="TechExactly_Task",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

#if defined(__OBJC__)
@class UIApplication;
@class UISceneSession;
@class UISceneConnectionOptions;
@class UISceneConfiguration;

SWIFT_CLASS("_TtC16TechExactly_Task11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions SWIFT_WARN_UNUSED_RESULT;
- (UISceneConfiguration * _Nonnull)application:(UIApplication * _Nonnull)application configurationForConnectingSceneSession:(UISceneSession * _Nonnull)connectingSceneSession options:(UISceneConnectionOptions * _Nonnull)options SWIFT_WARN_UNUSED_RESULT;
- (void)application:(UIApplication * _Nonnull)application didDiscardSceneSessions:(NSSet<UISceneSession *> * _Nonnull)sceneSessions;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIBarButtonItem;
@class NSString;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC16TechExactly_Task13ComposeNoteVC")
@interface ComposeNoteVC : UIViewController
@property (nonatomic, weak) IBOutlet UIBarButtonItem * _Null_unspecified doneItem;
@property (nonatomic, weak) IBOutlet UIBarButtonItem * _Null_unspecified deleteItem;
- (void)viewDidLoad;
- (IBAction)doneItemDidTapped:(UIBarButtonItem * _Nonnull)sender;
- (IBAction)deleteItemDidTapped:(UIBarButtonItem * _Nonnull)sender;
- (void)keyboardDidShow;
- (void)keyboardDidHide;
- (void)timerExpired;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class RichEditorToolbar;

/// RichEditorToolbarDelegate is a protocol for the RichEditorToolbar.
/// Used to receive actions that need extra work to perform (eg. display some UI)
SWIFT_PROTOCOL("_TtP16TechExactly_Task25RichEditorToolbarDelegate_")
@protocol RichEditorToolbarDelegate
@optional
/// Called when the Text Color toolbar item is pressed.
- (void)richEditorToolbarChangeTextColor:(RichEditorToolbar * _Nonnull)toolbar;
/// Called when the Background Color toolbar item is pressed.
- (void)richEditorToolbarChangeBackgroundColor:(RichEditorToolbar * _Nonnull)toolbar;
/// Called when the Insert Image toolbar item is pressed.
- (void)richEditorToolbarInsertImage:(RichEditorToolbar * _Nonnull)toolbar;
/// Called when the Insert Video toolbar item is pressed
- (void)richEditorToolbarInsertVideo:(RichEditorToolbar * _Nonnull)toolbar;
/// Called when the Insert Link toolbar item is pressed.
- (void)richEditorToolbarInsertLink:(RichEditorToolbar * _Nonnull)toolbar;
/// Called when the Insert Table toolbar item is pressed
- (void)richEditorToolbarInsertTable:(RichEditorToolbar * _Nonnull)toolbar;
@end


@interface ComposeNoteVC (SWIFT_EXTENSION(TechExactly_Task)) <RichEditorToolbarDelegate>
- (void)richEditorToolbarInsertLink:(RichEditorToolbar * _Nonnull)toolbar;
@end

@class RichEditorView;
@class NSURL;

/// RichEditorDelegate defines callbacks for the delegate of the RichEditorView
SWIFT_PROTOCOL("_TtP16TechExactly_Task18RichEditorDelegate_")
@protocol RichEditorDelegate
@optional
/// Called when the inner height of the text being displayed changes
/// Can be used to update the UI
- (void)richEditor:(RichEditorView * _Nonnull)editor heightDidChange:(NSInteger)height;
/// Called whenever the content inside the view changes
- (void)richEditor:(RichEditorView * _Nonnull)editor contentDidChange:(NSString * _Nonnull)content;
/// Called when the rich editor starts editing
- (void)richEditorTookFocus:(RichEditorView * _Nonnull)editor;
/// Called when the rich editor stops editing or loses focus
- (void)richEditorLostFocus:(RichEditorView * _Nonnull)editor;
/// Called when the RichEditorView has become ready to receive input
/// More concretely, is called when the internal WKWebView loads for the first time, and contentHTML is set
- (void)richEditorDidLoad:(RichEditorView * _Nonnull)editor;
/// Called when the internal WKWebView begins loading a URL that it does not know how to respond to
/// For example, if there is an external link, and then the user taps it
- (BOOL)richEditor:(RichEditorView * _Nonnull)editor shouldInteractWith:(NSURL * _Nonnull)url SWIFT_WARN_UNUSED_RESULT;
/// Called when custom actions are called by callbacks in the JS
/// By default, this method is not used unless called by some custom JS that you add
- (void)richEditor:(RichEditorView * _Nonnull)editor handle:(NSString * _Nonnull)action;
@end


@interface ComposeNoteVC (SWIFT_EXTENSION(TechExactly_Task)) <RichEditorDelegate>
- (void)richEditor:(RichEditorView * _Nonnull)editor contentDidChange:(NSString * _Nonnull)content;
- (void)richEditorTookFocus:(RichEditorView * _Nonnull)editor;
@end

@class NSEntityDescription;
@class NSManagedObjectContext;

SWIFT_CLASS_NAMED("Notes")
@interface Notes : NSManagedObject
- (nonnull instancetype)initWithEntity:(NSEntityDescription * _Nonnull)entity insertIntoManagedObjectContext:(NSManagedObjectContext * _Nullable)context OBJC_DESIGNATED_INITIALIZER;
@end



@class NSUUID;
@class NSDate;

@interface Notes (SWIFT_EXTENSION(TechExactly_Task))
@property (nonatomic, copy) NSUUID * _Nullable id;
@property (nonatomic, copy) NSString * _Nullable title;
@property (nonatomic, copy) NSString * _Nullable note;
@property (nonatomic, copy) NSDate * _Nullable created;
@property (nonatomic, copy) NSDate * _Nullable modified;
@end

@class UITableView;

SWIFT_CLASS("_TtC16TechExactly_Task11NotesListVC")
@interface NotesListVC : UIViewController
@property (nonatomic, weak) IBOutlet UITableView * _Null_unspecified notesListTblView;
- (void)viewDidLoad;
- (IBAction)composeNoteBtnDidTapped:(UIBarButtonItem * _Nonnull)sender;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSIndexPath;
@class UITableViewCell;
@class UISwipeActionsConfiguration;

@interface NotesListVC (SWIFT_EXTENSION(TechExactly_Task)) <UITableViewDataSource, UITableViewDelegate>
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (UISwipeActionsConfiguration * _Nullable)tableView:(UITableView * _Nonnull)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (BOOL)tableView:(UITableView * _Nonnull)tableView canEditRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
@end

@class UILabel;

SWIFT_CLASS("_TtC16TechExactly_Task12NotesTblCell")
@interface NotesTblCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified lblTitle;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified lblDescription;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIImage;

/// RichBarButtonItem is a subclass of UIBarButtonItem that takes a callback as opposed to the target-action pattern
SWIFT_CLASS("_TtC16TechExactly_Task17RichBarButtonItem")
@interface RichBarButtonItem : UIBarButtonItem
@property (nonatomic, copy) void (^ _Nullable actionHandler)(void);
- (nonnull instancetype)initWithImage:(UIImage * _Nullable)image handler:(void (^ _Nullable)(void))handler;
- (nonnull instancetype)initWithTitle:(NSString * _Nonnull)title handler:(void (^ _Nullable)(void))handler;
- (void)buttonWasTapped;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end


@class UIColor;

/// RichEditorToolbar is UIView that contains the toolbar for actions that can be performed on a RichEditorView
SWIFT_CLASS("_TtC16TechExactly_Task17RichEditorToolbar")
@interface RichEditorToolbar : UIView
/// The delegate to receive events that cannot be automatically completed
@property (nonatomic, weak) id <RichEditorToolbarDelegate> _Nullable delegate;
/// A reference to the RichEditorView that it should be performing actions on
@property (nonatomic, weak) RichEditorView * _Nullable editor;
/// The tint color to apply to the toolbar background.
@property (nonatomic, strong) UIColor * _Nullable barTintColor;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


@class RichEditorWebView;
@class UIScrollView;
@class WKWebView;
@class WKNavigation;
@class WKNavigationAction;
@class UIGestureRecognizer;

/// RichEditorView is a UIView that displays richly styled text, and allows it to be edited in a WYSIWYG fashion.
SWIFT_CLASS("_TtC16TechExactly_Task14RichEditorView")
@interface RichEditorView : UIView <UIGestureRecognizerDelegate, UIScrollViewDelegate, WKNavigationDelegate>
/// The delegate that will receive callbacks when certain actions are completed.
@property (nonatomic, weak) id <RichEditorDelegate> _Nullable delegate;
/// Input accessory view to display over they keyboard.
/// Defaults to nil
@property (nonatomic, strong) UIView * _Nullable inputAccessoryView;
/// The internal WKWebView that is used to display the text.
@property (nonatomic, readonly, strong) RichEditorWebView * _Nonnull webView;
/// Whether or not scroll is enabled on the view.
@property (nonatomic) BOOL isScrollEnabled;
/// Whether or not to allow user input in the view.
@property (nonatomic) BOOL editingEnabled;
/// The content HTML of the text being displayed.
/// Is continually updated as the text is being edited.
@property (nonatomic, readonly, copy) NSString * _Nonnull contentHTML;
/// The internal height of the text being displayed.
/// Is continually being updated as the text is edited.
@property (nonatomic, readonly) NSInteger editorHeight;
/// The line height of the editor. Defaults to 28.
@property (nonatomic, readonly) NSInteger lineHeight;
/// The HTML that is currently loaded in the editor view, if it is loaded. If it has not been loaded yet, it is the
/// HTML that will be loaded into the editor view once it finishes initializing.
@property (nonatomic, copy) NSString * _Nonnull html;
/// The placeholder text that should be shown when there is no user input.
@property (nonatomic, copy) NSString * _Nonnull placeholder;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)isEditingEnabledWithHandler:(void (^ _Nonnull)(BOOL))handler;
- (void)getHtmlWithHandler:(void (^ _Nonnull)(NSString * _Nonnull))handler;
/// Text representation of the data that has been input into the editor view, if it has been loaded.
- (void)getTextWithHandler:(void (^ _Nonnull)(NSString * _Nonnull))handler;
/// Returns selected text
- (void)getSelectedTextWithHandler:(void (^ _Nonnull)(NSString * _Nullable))handler;
/// The href of the current selection, if the current selection’s parent is an anchor tag.
/// Will be nil if there is no href, or it is an empty string.
- (void)getSelectedHrefWithHandler:(void (^ _Nonnull)(NSString * _Nullable))handler;
/// Whether or not the selection has a type specifically of “Range”.
- (void)hasRangeSelectionWithHandler:(void (^ _Nonnull)(BOOL))handler;
/// Whether or not the selection has a type specifically of “Range” or “Caret”.
- (void)hasRangeOrCaretSelectionWithHandler:(void (^ _Nonnull)(BOOL))handler;
- (void)removeFormat;
- (void)setFontSize:(NSInteger)size;
- (void)setEditorBackgroundColor:(UIColor * _Nonnull)color;
- (void)undo;
- (void)redo;
- (void)bold;
- (void)italic;
- (void)subscriptText;
- (void)superscript;
- (void)strikethrough;
- (void)underline;
- (void)setTextColor:(UIColor * _Nonnull)color;
- (void)setEditorFontColor:(UIColor * _Nonnull)color;
- (void)setTextBackgroundColor:(UIColor * _Nonnull)color;
- (void)header:(NSInteger)h;
- (void)indent;
- (void)outdent;
- (void)orderedList;
- (void)unorderedList;
- (void)blockquote;
- (void)alignLeft;
- (void)alignCenter;
- (void)alignRight;
- (void)checkbox;
@property (nonatomic) BOOL offline;
- (void)insertImage:(NSString * _Nonnull)url alt:(NSString * _Nonnull)alt;
- (void)insertVideoWithVidURL:(NSString * _Nonnull)vidURL posterURL:(NSString * _Nonnull)posterURL isBase64:(BOOL)isBase64;
- (void)insertLinkWithHref:(NSString * _Nonnull)href text:(NSString * _Nonnull)text title:(NSString * _Nonnull)title;
- (void)focus;
- (void)focusAt:(CGPoint)at;
- (void)blur;
- (void)setCheckbox;
- (void)insertTableWithWidth:(NSInteger)width height:(NSInteger)height;
/// Checks if cursor is in a table element. If so, return true so that you can add menu items accordingly.
- (void)isCursorInTableWithHandler:(void (^ _Nonnull)(BOOL))handler;
- (void)addRowToTable;
- (void)deleteColumnFromTable;
/// Runs some JavaScript on the WKWebView and returns the result
/// If there is no result, returns an empty string
/// \param js The JavaScript string to be run
///
///
/// returns:
/// The result of the JavaScript that was run
- (void)runJS:(NSString * _Nonnull)js handler:(void (^ _Nullable)(NSString * _Nonnull))handler;
- (void)scrollViewDidScroll:(UIScrollView * _Nonnull)scrollView;
- (void)webView:(WKWebView * _Nonnull)webView didFinishNavigation:(WKNavigation * _Null_unspecified)navigation;
- (void)webView:(WKWebView * _Nonnull)webView decidePolicyForNavigationAction:(WKNavigationAction * _Nonnull)navigationAction decisionHandler:(void (^ _Nonnull)(WKNavigationActionPolicy))decisionHandler;
/// Delegate method for our UITapGestureDelegate.
/// Since the internal web view also has gesture recognizers, we have to make sure that we actually receive our taps.
- (BOOL)gestureRecognizer:(UIGestureRecognizer * _Nonnull)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer * _Nonnull)otherGestureRecognizer SWIFT_WARN_UNUSED_RESULT;
- (BOOL)becomeFirstResponder SWIFT_WARN_UNUSED_RESULT;
- (BOOL)resignFirstResponder SWIFT_WARN_UNUSED_RESULT;
@end

@class WKWebViewConfiguration;

SWIFT_CLASS("_TtC16TechExactly_Task17RichEditorWebView")
@interface RichEditorWebView : WKWebView
@property (nonatomic, readonly, strong) UIView * _Nullable inputAccessoryView;
- (nonnull instancetype)initWithFrame:(CGRect)frame configuration:(WKWebViewConfiguration * _Nonnull)configuration OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIWindow;
@class UIScene;

SWIFT_CLASS("_TtC16TechExactly_Task13SceneDelegate")
@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (void)scene:(UIScene * _Nonnull)scene willConnectToSession:(UISceneSession * _Nonnull)session options:(UISceneConnectionOptions * _Nonnull)connectionOptions;
- (void)sceneDidDisconnect:(UIScene * _Nonnull)scene;
- (void)sceneDidBecomeActive:(UIScene * _Nonnull)scene;
- (void)sceneWillResignActive:(UIScene * _Nonnull)scene;
- (void)sceneWillEnterForeground:(UIScene * _Nonnull)scene;
- (void)sceneDidEnterBackground:(UIScene * _Nonnull)scene;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end








#endif
#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#if defined(__cplusplus)
#endif
#pragma clang diagnostic pop
#endif

#else
#error unsupported Swift architecture
#endif
